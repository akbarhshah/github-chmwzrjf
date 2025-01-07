import React from 'react';
import { Menu, X } from 'lucide-react';
import { Button } from '@/components/ui/Button';
import { HeaderNav } from './HeaderNav';

export function MobileMenu() {
  const [isOpen, setIsOpen] = React.useState(false);

  return (
    <div className="md:hidden">
      <Button
        variant="ghost"
        size="sm"
        onClick={() => setIsOpen(!isOpen)}
        aria-label={isOpen ? 'Close menu' : 'Open menu'}
      >
        {isOpen ? (
          <X className="w-5 h-5" />
        ) : (
          <Menu className="w-5 h-5" />
        )}
      </Button>

      {isOpen && (
        <div className="absolute top-16 left-0 right-0 bg-white dark:bg-gray-800 border-b border-brand-100 dark:border-gray-700/50 py-4 px-4 shadow-lg">
          <nav className="flex flex-col space-y-4">
            <HeaderNav />
          </nav>
        </div>
      )}
    </div>
  );
}