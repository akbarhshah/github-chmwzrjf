import React from 'react';
import { Twitter, Facebook, Link as LinkIcon } from 'lucide-react';
import { Button } from '../ui/Button';

interface ShareMenuProps {
  content: string;
  onClose: () => void;
}

export function ShareMenu({ content, onClose }: ShareMenuProps) {
  const copyToClipboard = async () => {
    await navigator.clipboard.writeText(content);
    onClose();
  };

  return (
    <div className="absolute right-0 top-full mt-2 bg-white dark:bg-gray-800 rounded-lg shadow-lg border border-gray-100 dark:border-gray-700 p-2 flex gap-2">
      <Button
        variant="ghost"
        size="sm"
        onClick={() => window.open(`https://twitter.com/intent/tweet?text=${encodeURIComponent(content)}&url=${encodeURIComponent(window.location.href)}`, '_blank')}
      >
        <Twitter className="w-4 h-4" />
      </Button>
      <Button
        variant="ghost"
        size="sm"
        onClick={() => window.open(`https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(window.location.href)}`, '_blank')}
      >
        <Facebook className="w-4 h-4" />
      </Button>
      <Button
        variant="ghost"
        size="sm"
        onClick={copyToClipboard}
      >
        <LinkIcon className="w-4 h-4" />
      </Button>
    </div>
  );
}