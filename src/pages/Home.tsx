import React from 'react';
import { FactHeader } from '@/components/fact/FactHeader';
import { FactContent } from '@/components/fact/FactContent';
import { FactActions } from '@/components/fact/FactActions';
import { FactLoadInfo } from '@/components/fact/FactLoadInfo';
import { FactRefreshButton } from '@/components/fact/FactRefreshButton';
import { SponsorsSection } from '@/components/sponsors/SponsorsSection';
import { FactExplanation } from '@/components/FactExplanation';
import { FactSkeleton } from '@/components/fact/FactSkeleton';
import { FactExplanationSkeleton } from '@/components/fact/FactExplanationSkeleton';
import { SmartLoadingMessage } from '@/components/loading/SmartLoadingMessage';
import { useFact } from '@/hooks/useFact';
import { useShare } from '@/hooks/useShare';

export function Home() {
  const { fact, loading, loadTime, error, fetchRandomFact } = useFact();
  const { isSharing, handleShare, closeShare } = useShare();

  React.useEffect(() => {
    fetchRandomFact();
  }, [fetchRandomFact]);

  return (
    <div className="max-w-3xl mx-auto">
      <FactHeader />
      
      {loading ? (
        <>
          <SmartLoadingMessage />
          <FactSkeleton />
          <FactExplanationSkeleton />
        </>
      ) : error ? (
        <div className="flex flex-col items-center justify-center min-h-[200px] text-center">
          <p className="text-gray-600 dark:text-gray-400 mb-4">{error}</p>
          <button
            onClick={fetchRandomFact}
            className="text-blue-600 hover:text-blue-700 font-medium"
          >
            Try again
          </button>
        </div>
      ) : fact ? (
        <>
          <FactContent
            content={fact.content}
            source={fact.source}
            sourceUrl={fact.source_url}
          />
          
          <FactActions 
            onShare={() => handleShare(fact.content)}
            isSharing={isSharing}
            onCloseShare={closeShare}
            content={fact.content}
          />
          
          <FactLoadInfo loadTime={loadTime} />
          <FactRefreshButton onClick={fetchRandomFact} />
          
          <SponsorsSection />
          <FactExplanation fact={fact} />
        </>
      ) : (
        <div className="text-center text-gray-600 dark:text-gray-400">
          No facts available at the moment.
        </div>
      )}
    </div>
  );
}