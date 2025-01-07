import React, { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import type { ContactSubmission } from '@/types/contact';

export function ContactSubmissions() {
  const [submissions, setSubmissions] = useState<ContactSubmission[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchSubmissions() {
      try {
        const { data, error } = await supabase
          .from('contact_submissions')
          .select('*')
          .order('created_at', { ascending: false });

        if (error) throw error;
        
        console.log('Contact submissions:', data);
        setSubmissions(data || []);
      } catch (err) {
        const message = err instanceof Error ? err.message : 'Failed to fetch submissions';
        setError(message);
        console.error('Error fetching submissions:', err);
      } finally {
        setLoading(false);
      }
    }

    fetchSubmissions();
  }, []);

  if (loading) return <div>Loading submissions...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div>
      <h2>Contact Submissions ({submissions.length})</h2>
      <pre>{JSON.stringify(submissions, null, 2)}</pre>
    </div>
  );
}