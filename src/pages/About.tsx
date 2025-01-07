import React from 'react';
import { AboutHero } from '@/components/about/AboutHero';
import { AboutStory } from '@/components/about/AboutStory';

export function About() {
  return (
    <div className="max-w-4xl mx-auto">
      <AboutHero />
      <AboutStory />
    </div>
  );
}