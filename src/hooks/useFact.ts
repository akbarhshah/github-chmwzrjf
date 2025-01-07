import { useState, useCallback, useEffect } from 'react';
import { getRandomFact, incrementViewCount } from '@/lib/api';
import type { Fact } from '@/types/fact';

export function useFact() {
  const [fact, setFact] = useState<Fact | null>(null);
  const [loading, setLoading] = useState(true);
  const [loadTime, setLoadTime] = useState(0);
  const [error, setError] = useState<string | null>(null);

  const fetchRandomFact = useCallback(async () => {
    setLoading(true);
    setError(null);
    const startTime = performance.now();

    try {
      const newFact = await getRandomFact();
      
      // Only update if it's a different fact
      setFact(prevFact => 
        prevFact?.id === newFact.id ? null : newFact
      );

      // Increment view count in the background
      incrementViewCount(newFact.id).catch(error => {
        console.error('Error updating view count:', error);
      });
    } catch (error) {
      const message = error instanceof Error ? error.message : 'Failed to fetch fact';
      setError(message);
      console.error('Error fetching fact:', error);
    } finally {
      const endTime = performance.now();
      setLoadTime((endTime - startTime) / 1000);
      setLoading(false);
    }
  }, []);

  // Fetch a new fact on mount and when URL changes
  useEffect(() => {
    fetchRandomFact();
  }, [fetchRandomFact, window.location.href]);

  return {
    fact,
    loading,
    loadTime,
    error,
    fetchRandomFact
  };
}