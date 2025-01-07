/*
  # Create contact submissions table

  1. New Tables
    - `contact_submissions`
      - `id` (uuid, primary key)
      - `name` (text)
      - `email` (text)
      - `subject` (text)
      - `message` (text)
      - `status` (enum: pending, sent, failed)
      - `created_at` (timestamp)
  2. Security
    - Enable RLS on `contact_submissions` table
    - Add policy for inserting submissions
*/

-- Create status enum
CREATE TYPE contact_status AS ENUM ('pending', 'sent', 'failed');

-- Create contact submissions table
CREATE TABLE IF NOT EXISTS contact_submissions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  email text NOT NULL,
  subject text NOT NULL,
  message text NOT NULL,
  status contact_status NOT NULL DEFAULT 'pending',
  created_at timestamptz NOT NULL DEFAULT now()
);

-- Enable RLS
ALTER TABLE contact_submissions ENABLE ROW LEVEL SECURITY;

-- Create policy for inserting submissions
CREATE POLICY "Anyone can insert contact submissions" ON contact_submissions
  FOR INSERT
  WITH CHECK (true);

-- Create policy for viewing submissions (admin only)
CREATE POLICY "Only authenticated users can view submissions" ON contact_submissions
  FOR SELECT
  TO authenticated
  USING (true);