import React from 'react';
import { RefreshCw } from 'lucide-react';
import { Button } from '../ui/Button';

interface FactRefreshButtonProps {
  onClick: () => void;
}

export function FactRefreshButton({ onClick }: FactRefreshButtonProps) {
  return (
    <div className="text-center">
      <Button 
        onClick={onClick} 
        className="bg-gray-50 hover:bg-gray-100 text-gray-900 border border-gray-200 shadow-sm gap-2 dark:bg-gray-800 dark:hover:bg-gray-700 dark:text-gray-100 dark:border-gray-700"
      >
        <RefreshCw className="w-4 h-4" />
        Read another fact
      </Button>
    </div>
  );
}