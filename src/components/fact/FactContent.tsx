import React from 'react';
import { Lightbulb } from 'lucide-react';
import { Card } from '../ui/Card';

interface FactContentProps {
  content: string;
  source: string;
  sourceUrl?: string;
}

export function FactContent({ content, source, sourceUrl }: FactContentProps) {
  return (
    <Card className="p-6 bg-brand-100/70 dark:bg-gray-800/50">
      <div className="space-y-4">
        <div className="flex gap-4">
          <div className="flex-shrink-0">
            <div className="w-8 h-8 rounded-full bg-white dark:bg-gray-700 flex items-center justify-center shadow-sm">
              <Lightbulb className="w-5 h-5 text-brand-600 dark:text-brand-400" />
            </div>
          </div>
          
          <p className="text-lg text-brand-900 dark:text-gray-100 leading-relaxed">
            {content}
          </p>
        </div>

        <div className="flex items-center text-sm text-brand-600 dark:text-brand-400">
          <span className="mr-1">Source:</span>
          {sourceUrl ? (
            <a 
              href={sourceUrl}
              target="_blank"
              rel="noopener noreferrer"
              className="text-brand-700 hover:text-brand-800 dark:text-brand-300 dark:hover:text-brand-200 hover:underline"
            >
              {source}
            </a>
          ) : (
            <span>{source}</span>
          )}
        </div>
      </div>
    </Card>
  );
}