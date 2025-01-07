import React from 'react';
import { Info } from 'lucide-react';

export function FactHeader() {
  return (
    <div className="text-center space-y-6 mb-8">
      <div className="inline-flex items-center px-4 py-2 bg-brand-100 dark:bg-brand-900/50 text-brand-800 dark:text-brand-200 rounded-full text-sm font-medium">
        <Info className="w-4 h-4 mr-2" />
        Discover fascinating facts
      </div>
      
      <div className="space-y-2">
        <h1 className="text-4xl font-bold text-brand-900 dark:text-white">
          Fascinating Facts of the Day
        </h1>
        <p className="text-lg text-brand-600 dark:text-brand-300">
          Explore a world of surprising truths and curious knowledge
        </p>
      </div>
    </div>
  );
}