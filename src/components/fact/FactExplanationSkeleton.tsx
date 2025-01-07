import React from 'react';
import { Skeleton } from '../ui/Skeleton';

export function FactExplanationSkeleton() {
  return (
    <div className="mt-12 space-y-8">
      <Skeleton className="h-8 w-48" />
      <div className="space-y-6">
        {[1, 2, 3].map((index) => (
          <div key={index} className="space-y-2">
            <Skeleton className="h-6 w-64" />
            <Skeleton className="h-4 w-full" />
            <Skeleton className="h-4 w-11/12" />
            <Skeleton className="h-4 w-4/5" />
          </div>
        ))}
      </div>
    </div>
  );
}