import React from 'react';
import { Link } from 'react-router-dom';
import { Brain } from 'lucide-react';
import { HeaderNav } from './HeaderNav';
import { HeaderThemeToggle } from './HeaderThemeToggle';
import { MobileMenu } from './MobileMenu';

export function Header() {
  return (
    <header className="sticky top-0 z-50 bg-white dark:bg-gray-800 border-b border-brand-100 dark:border-gray-700/50">
      <nav className="container mx-auto px-4 h-16 flex items-center justify-between">
        <Link to="/" className="flex items-center space-x-2">
          <Brain className="w-6 h-6 text-brand-600 dark:text-brand-400" />
          <span className="text-xl font-bold text-brand-900 dark:text-white">FactFlow</span>
        </Link>
        
        <div className="flex items-center space-x-6">
          <div className="hidden md:flex items-center space-x-6">
            <HeaderNav />
          </div>
          <HeaderThemeToggle />
          <MobileMenu />
        </div>
      </nav>
    </header>
  );
}