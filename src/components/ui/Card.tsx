import React from 'react';
import { cn } from '@/lib/utils';

interface CardProps {
  className?: string;
  children: React.ReactNode;
}

export function Card({ className, children }: CardProps) {
  return (
    <div className={cn(
      'bg-white rounded-lg shadow-sm border border-brand-100',
      'dark:bg-gray-800/50 dark:border-gray-700/50',
      className
    )}>
      {children}
    </div>
  );
}