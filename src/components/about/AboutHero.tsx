import React from 'react';
import { Brain } from 'lucide-react';

export function AboutHero() {
  return (
    <div className="text-center py-12">
      <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-brand-100 dark:bg-brand-900/50 mb-6">
        <Brain className="w-8 h-8 text-brand-600 dark:text-brand-400" />
      </div>
      <h1 className="text-4xl font-bold text-brand-900 dark:text-white mb-4">
        About FactFlow
      </h1>
      <p className="text-xl text-brand-600 dark:text-brand-300 max-w-2xl mx-auto">
        Discover the story behind your daily dose of fascinating knowledge
      </p>
    </div>
  );
}