/*
  # Fix contact submissions policies

  This migration ensures policies are created only if they don't exist.
*/

-- Create status enum if not exists
DO $$ 
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'contact_status') THEN
    CREATE TYPE contact_status AS ENUM ('pending', 'sent', 'failed');
  END IF;
END $$;

-- Create contact submissions table if not exists
CREATE TABLE IF NOT EXISTS contact_submissions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  email text NOT NULL,
  subject text NOT NULL,
  message text NOT NULL,
  status contact_status NOT NULL DEFAULT 'pending',
  created_at timestamptz NOT NULL DEFAULT now()
);

-- Enable RLS if not already enabled
DO $$ 
BEGIN
  IF NOT EXISTS (
    SELECT 1 
    FROM pg_tables 
    WHERE schemaname = 'public' 
    AND tablename = 'contact_submissions' 
    AND rowsecurity = true
  ) THEN
    ALTER TABLE contact_submissions ENABLE ROW LEVEL SECURITY;
  END IF;
END $$;

-- Create policies if they don't exist
DO $$ 
BEGIN
  IF NOT EXISTS (
    SELECT 1 
    FROM pg_policies 
    WHERE tablename = 'contact_submissions' 
    AND policyname = 'Anyone can insert contact submissions'
  ) THEN
    CREATE POLICY "Anyone can insert contact submissions"
      ON contact_submissions
      FOR INSERT
      WITH CHECK (true);
  END IF;

  IF NOT EXISTS (
    SELECT 1 
    FROM pg_policies 
    WHERE tablename = 'contact_submissions' 
    AND policyname = 'Only authenticated users can view submissions'
  ) THEN
    CREATE POLICY "Only authenticated users can view submissions"
      ON contact_submissions
      FOR SELECT
      TO authenticated
      USING (true);
  END IF;
END $$;