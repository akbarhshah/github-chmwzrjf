import React from 'react';
import { Share2 } from 'lucide-react';
import { Button } from '../ui/Button';
import { ShareMenu } from './ShareMenu';

interface FactActionsProps {
  onShare: () => void;
  isSharing: boolean;
  onCloseShare: () => void;
  content: string;
}

export function FactActions({ onShare, isSharing, onCloseShare, content }: FactActionsProps) {
  return (
    <div className="flex justify-end gap-2 mt-4 relative">
      <Button
        variant="ghost"
        size="sm"
        onClick={onShare}
        className="text-gray-600"
      >
        <Share2 className="w-4 h-4 mr-2" />
        Share this fact
      </Button>
      
      {isSharing && (
        <ShareMenu content={content} onClose={onCloseShare} />
      )}
    </div>
  );
}