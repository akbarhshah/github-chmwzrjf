import React from 'react';
import { Share2, Twitter, Facebook, Link as LinkIcon } from 'lucide-react';
import { cn } from '../lib/utils';

interface FactCardProps {
  content: string;
  source: string;
  sourceUrl?: string;
  imageUrl?: string;
  readTime: number;
  onShare?: () => void;
  className?: string;
}

export function FactCard({ content, source, sourceUrl, imageUrl, readTime, onShare, className }: FactCardProps) {
  const [isSharing, setIsSharing] = React.useState(false);

  const handleShare = async () => {
    if (navigator.share) {
      try {
        await navigator.share({
          title: 'Interesting Fact from FactFlow',
          text: content,
          url: window.location.href,
        });
      } catch (error) {
        setIsSharing(!isSharing);
      }
    } else {
      setIsSharing(!isSharing);
    }
  };

  const copyToClipboard = async () => {
    await navigator.clipboard.writeText(content);
    setIsSharing(false);
  };

  return (
    <div className={cn(
      "bg-white dark:bg-gray-800 rounded-lg shadow-lg overflow-hidden",
      className
    )}>
      {imageUrl && (
        <div className="relative h-48 w-full">
          <img
            src={imageUrl}
            alt="Fact illustration"
            className="w-full h-full object-cover"
          />
        </div>
      )}
      
      <div className="p-6">
        <div className="mb-4">
          <p className="text-lg text-gray-900 dark:text-gray-100 leading-relaxed">{content}</p>
        </div>

        <div className="flex items-center justify-between mt-6 pt-4 border-t border-gray-200 dark:border-gray-700">
          <div>
            <p className="text-sm text-gray-600 dark:text-gray-400">
              Source:{' '}
              {sourceUrl ? (
                <a
                  href={sourceUrl}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-blue-600 hover:text-blue-800 dark:text-blue-400 dark:hover:text-blue-300"
                >
                  {source}
                </a>
              ) : (
                <span>{source}</span>
              )}
            </p>
            <p className="text-sm text-gray-500 dark:text-gray-500">
              {Math.round(readTime / 60 * 10) / 10} min read
            </p>
          </div>

          <div className="relative">
            <button
              onClick={handleShare}
              className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full"
            >
              <Share2 className="w-5 h-5 text-gray-600 dark:text-gray-400" />
            </button>

            {isSharing && (
              <div className="absolute bottom-full right-0 mb-2 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-2 flex space-x-2">
                <button
                  onClick={() => window.open(`https://twitter.com/intent/tweet?text=${encodeURIComponent(content)}&url=${encodeURIComponent(window.location.href)}`, '_blank')}
                  className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full"
                >
                  <Twitter className="w-5 h-5 text-gray-600 dark:text-gray-400" />
                </button>
                <button
                  onClick={() => window.open(`https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(window.location.href)}`, '_blank')}
                  className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full"
                >
                  <Facebook className="w-5 h-5 text-gray-600 dark:text-gray-400" />
                </button>
                <button
                  onClick={copyToClipboard}
                  className="p-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full"
                >
                  <LinkIcon className="w-5 h-5 text-gray-600 dark:text-gray-400" />
                </button>
              </div>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}