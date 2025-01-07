import React from 'react';
import { Link } from 'react-router-dom';

export function FooterLinks() {
  return (
    <nav className="flex flex-col md:flex-row gap-4 md:gap-6">
      <Link to="/" className="text-sm text-black hover:text-black/80 dark:text-white dark:hover:text-white/80">
        Home
      </Link>
      <Link to="/about" className="text-sm text-black hover:text-black/80 dark:text-white dark:hover:text-white/80">
        About
      </Link>
      <Link to="/contact" className="text-sm text-black hover:text-black/80 dark:text-white dark:hover:text-white/80">
        Contact
      </Link>
    </nav>
  );
}