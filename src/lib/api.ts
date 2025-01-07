import { supabase } from './supabase';
import type { Fact } from '@/types/fact';

// Retry utility for failed requests
async function retryOperation<T>(
  operation: () => Promise<T>,
  maxRetries: number = 3,
  delay: number = 1000
): Promise<T> {
  let lastError;
  
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await operation();
    } catch (error) {
      console.error(`Attempt ${i + 1} failed:`, error);
      lastError = error;
      if (i < maxRetries - 1) {
        await new Promise(resolve => setTimeout(resolve, delay * Math.pow(2, i)));
      }
    }
  }
  
  throw lastError;
}

// Get random fact with retries
export async function getRandomFact(): Promise<Fact> {
  return retryOperation(async () => {
    try {
      // Get count of active facts
      const { count, error: countError } = await supabase
        .from('facts')
        .select('*', { count: 'exact', head: true })
        .eq('status', 'active');

      if (countError) {
        console.error('Error getting fact count:', countError);
        throw countError;
      }
      
      if (!count) {
        console.error('No facts available');
        throw new Error('No facts available');
      }

      // Get random fact
      const randomOffset = Math.floor(Math.random() * count);
      const { data, error: factError } = await supabase
        .from('facts')
        .select('*')
        .eq('status', 'active')
        .range(randomOffset, randomOffset)
        .limit(1)
        .single();

      if (factError) {
        console.error('Error fetching fact:', factError);
        throw factError;
      }
      
      if (!data) {
        console.error('No fact found');
        throw new Error('Failed to fetch fact');
      }

      return data;
    } catch (error) {
      console.error('Supabase request failed:', error);
      throw error;
    }
  });
}

// Update view count with retries
export async function incrementViewCount(factId: string): Promise<void> {
  return retryOperation(async () => {
    try {
      // First get current view count
      const { data: fact, error: getError } = await supabase
        .from('facts')
        .select('view_count')
        .eq('id', factId)
        .single();

      if (getError) {
        console.error('Error getting view count:', getError);
        throw getError;
      }
      
      if (!fact) {
        console.error('Fact not found');
        throw new Error('Fact not found');
      }

      // Then increment it
      const { error: updateError } = await supabase
        .from('facts')
        .update({ view_count: fact.view_count + 1 })
        .eq('id', factId);

      if (updateError) {
        console.error('Error updating view count:', updateError);
        throw updateError;
      }
    } catch (error) {
      console.error('Supabase request failed:', error);
      throw error;
    }
  });
}