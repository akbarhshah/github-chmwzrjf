import React from 'react';
import { Target } from 'lucide-react';

export function AboutMission() {
  return (
    <section className="py-12">
      <div className="bg-white dark:bg-gray-800/50 rounded-2xl p-8 shadow-sm border border-brand-100 dark:border-gray-700/50">
        <div className="flex items-start gap-4">
          <div className="p-3 rounded-full bg-brand-50 dark:bg-brand-900/50">
            <Target className="w-6 h-6 text-brand-600 dark:text-brand-400" />
          </div>
          <div>
            <h2 className="text-2xl font-bold text-brand-900 dark:text-white mb-4">
              Our Mission
            </h2>
            <p className="text-brand-600 dark:text-brand-300 leading-relaxed">
              We believe that learning should be engaging and accessible to everyone. 
              Our mission is to spark curiosity and inspire lifelong learning by sharing 
              fascinating facts about our world, backed by reliable sources and explained 
              in an engaging way.
            </p>
          </div>
        </div>
      </div>
    </section>
  );
}