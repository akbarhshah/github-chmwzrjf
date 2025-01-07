import React from 'react';
import { Link } from 'react-router-dom';

export function HeaderNav() {
  return (
    <>
      <Link 
        to="/" 
        className="text-brand-600 hover:text-brand-700 dark:text-brand-400 dark:hover:text-brand-300 md:inline-block"
      >
        Home
      </Link>
      <Link 
        to="/about" 
        className="text-brand-600 hover:text-brand-700 dark:text-brand-400 dark:hover:text-brand-300 md:inline-block"
      >
        About
      </Link>
      <Link 
        to="/contact" 
        className="text-brand-600 hover:text-brand-700 dark:text-brand-400 dark:hover:text-brand-300 md:inline-block"
      >
        Contact
      </Link>
    </>
  );
}