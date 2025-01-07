import React from 'react';
import { MessageSquare } from 'lucide-react';

export function ContactHero() {
  return (
    <div className="text-center py-12">
      <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-brand-100 dark:bg-brand-900/50 mb-6">
        <MessageSquare className="w-8 h-8 text-brand-600 dark:text-brand-400" />
      </div>
      <h1 className="text-4xl font-bold text-brand-900 dark:text-white mb-4">
        Contact Us
      </h1>
      <p className="text-xl text-brand-600 dark:text-brand-300 max-w-2xl mx-auto">
        Have questions or suggestions? We'd love to hear from you.
      </p>
    </div>
  );
}