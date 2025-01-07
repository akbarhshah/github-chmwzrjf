import React from 'react';
import { cn } from '../lib/utils';

interface Explanation {
  title: string;
  content: string;
}

interface FactExplanationProps {
  fact: {
    detailed_explanation?: Explanation[];
    image_url?: string;
    category?: string;
  };
  className?: string;
}

export function FactExplanation({ fact, className }: FactExplanationProps) {
  if (!fact.detailed_explanation?.length) return null;

  const explanation = fact.detailed_explanation[0];
  const paragraphs = explanation.content.split('\n\n');

  // Fallback images by category
  const fallbackImages = {
    Science: 'https://images.unsplash.com/photo-1507413245164-6160d8298b31?auto=format&fit=crop&q=80',
    History: 'https://images.unsplash.com/photo-1461360370896-922624d12aa1?auto=format&fit=crop&q=80',
    Space: 'https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?auto=format&fit=crop&q=80',
    Biology: 'https://images.unsplash.com/photo-1530026405186-ed1f139313f8?auto=format&fit=crop&q=80'
  };

  const imageUrl = fact.image_url || (fact.category ? fallbackImages[fact.category as keyof typeof fallbackImages] : null);

  return (
    <div className={cn("mt-12 space-y-8", className)}>
      <h2 className="text-2xl font-bold text-brand-900 dark:text-white">
        Curious? Here is the Full Story Behind the Fact!
      </h2>

      {imageUrl && (
        <div className="relative w-full h-64 md:h-80 overflow-hidden rounded-xl">
          <img
            src={imageUrl}
            alt="Fact illustration"
            className="w-full h-full object-cover"
          />
        </div>
      )}

      <div className="space-y-6">
        {paragraphs.map((paragraph, index) => (
          <p key={index} className="text-brand-700 dark:text-brand-300 leading-relaxed">
            {paragraph}
          </p>
        ))}
      </div>
    </div>
  );
}