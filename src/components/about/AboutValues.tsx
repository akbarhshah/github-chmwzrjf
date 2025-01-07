import React from 'react';
import { BookOpen, Shield, Sparkles } from 'lucide-react';

export function AboutValues() {
  const values = [
    {
      icon: <BookOpen className="w-6 h-6" />,
      title: "Educational Excellence",
      description: "We ensure all our facts are thoroughly researched and verified from reliable sources."
    },
    {
      icon: <Shield className="w-6 h-6" />,
      title: "Trust & Accuracy",
      description: "Every fact is fact-checked and backed by credible scientific or academic sources."
    },
    {
      icon: <Sparkles className="w-6 h-6" />,
      title: "Engaging Content",
      description: "We make learning fun by presenting information in an engaging and accessible way."
    }
  ];

  return (
    <section className="py-12">
      <h2 className="text-2xl font-bold text-brand-900 dark:text-white mb-8 text-center">
        Our Values
      </h2>
      <div className="grid md:grid-cols-3 gap-8">
        {values.map((value, index) => (
          <div 
            key={index}
            className="bg-white dark:bg-gray-800/50 rounded-xl p-6 border border-brand-100 dark:border-gray-700/50"
          >
            <div className="w-12 h-12 rounded-full bg-brand-50 dark:bg-brand-900/50 flex items-center justify-center mb-4">
              <div className="text-brand-600 dark:text-brand-400">
                {value.icon}
              </div>
            </div>
            <h3 className="text-lg font-semibold text-brand-900 dark:text-white mb-2">
              {value.title}
            </h3>
            <p className="text-brand-600 dark:text-brand-300">
              {value.description}
            </p>
          </div>
        ))}
      </div>
    </section>
  );
}