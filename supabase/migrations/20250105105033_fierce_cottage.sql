/*
  # Initial Schema Setup for FactFlow

  1. New Tables
    - `facts`
      - `id` (uuid, primary key)
      - `content` (text, fact content)
      - `source` (text, attribution)
      - `source_url` (text, optional link)
      - `category` (text)
      - `read_time` (integer, seconds)
      - `status` (enum: active, draft, archived)
      - `view_count` (integer)
      - `created_at` (timestamp)
      - `updated_at` (timestamp)
    
    - `sponsors`
      - `id` (uuid, primary key)
      - `company_name` (text)
      - `website` (text)
      - `status` (enum: active, inactive)
      - `display_config` (jsonb)
      - `start_date` (timestamp)
      - `end_date` (timestamp)
      - `created_at` (timestamp)
      - `updated_at` (timestamp)

  2. Security
    - Enable RLS on all tables
    - Add policies for authenticated admin access
*/

-- Create fact status enum
CREATE TYPE fact_status AS ENUM ('active', 'draft', 'archived');
CREATE TYPE sponsor_status AS ENUM ('active', 'inactive');

-- Facts table
CREATE TABLE IF NOT EXISTS facts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  content text NOT NULL,
  source text NOT NULL,
  source_url text,
  category text NOT NULL,
  read_time integer NOT NULL DEFAULT 0,
  status fact_status NOT NULL DEFAULT 'draft',
  view_count integer NOT NULL DEFAULT 0,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- Sponsors table
CREATE TABLE IF NOT EXISTS sponsors (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  company_name text NOT NULL,
  website text NOT NULL,
  status sponsor_status NOT NULL DEFAULT 'inactive',
  display_config jsonb NOT NULL DEFAULT '{}',
  start_date timestamptz,
  end_date timestamptz,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- Enable RLS
ALTER TABLE facts ENABLE ROW LEVEL SECURITY;
ALTER TABLE sponsors ENABLE ROW LEVEL SECURITY;

-- Policies for facts table
CREATE POLICY "Public users can view active facts" ON facts
  FOR SELECT
  USING (status = 'active');

CREATE POLICY "Admins have full access to facts" ON facts
  FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- Policies for sponsors table
CREATE POLICY "Public users can view active sponsors" ON sponsors
  FOR SELECT
  USING (status = 'active');

CREATE POLICY "Admins have full access to sponsors" ON sponsors
  FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- Function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ language 'plpgsql';

-- Add triggers for updated_at
CREATE TRIGGER update_facts_updated_at
  BEFORE UPDATE ON facts
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_sponsors_updated_at
  BEFORE UPDATE ON sponsors
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();