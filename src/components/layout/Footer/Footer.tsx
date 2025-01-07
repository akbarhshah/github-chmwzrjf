import React from 'react';
import { FooterAbout } from './FooterAbout';
import { FooterLinks } from './FooterLinks';
import { FooterThemeToggle } from './FooterThemeToggle';

export function Footer() {
  return (
    <footer className="bg-brand-100 dark:bg-gray-900/90 border-t border-brand-200 dark:border-gray-800">
      <div className="container mx-auto px-4 py-8">
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          <FooterAbout />
          <div className="flex flex-col items-start md:items-end gap-6">
            <FooterLinks />
            <FooterThemeToggle />
          </div>
        </div>

        <div className="mt-8 pt-6 border-t border-brand-200 dark:border-gray-800">
          <p className="text-sm text-black dark:text-white">
            Project developed by Akbar Shah. ©FactFlow. All rights reserved.
          </p>
        </div>
      </div>
    </footer>
  );
}
