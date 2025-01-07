import React from 'react';

interface FactLoadInfoProps {
  loadTime: number;
}

export function FactLoadInfo({ loadTime }: FactLoadInfoProps) {
  return (
    <div className="text-center text-xs text-gray-500 mb-2">
      Fact loaded in {loadTime.toFixed(2)} seconds
    </div>
  );
}