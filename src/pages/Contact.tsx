import React from 'react';
import { ContactHero } from '@/components/contact/ContactHero';
import { ContactForm } from '@/components/contact/ContactForm';

export function Contact() {
  return (
    <div className="max-w-2xl mx-auto">
      <ContactHero />
      <div className="bg-white dark:bg-gray-800/50 rounded-2xl p-8 shadow-sm border border-brand-100 dark:border-gray-700/50">
        <ContactForm />
      </div>
    </div>
  );
}