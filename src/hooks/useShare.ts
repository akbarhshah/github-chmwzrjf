import { useState, useCallback } from 'react';

export function useShare() {
  const [isSharing, setIsSharing] = useState(false);

  const handleShare = useCallback(async (content: string) => {
    if (navigator.share) {
      try {
        await navigator.share({
          title: 'Fascinating Fact from FactFlow',
          text: content,
          url: window.location.href,
        });
      } catch (error) {
        setIsSharing(true);
      }
    } else {
      setIsSharing(true);
    }
  }, []);

  const closeShare = useCallback(() => {
    setIsSharing(false);
  }, []);

  return {
    isSharing,
    handleShare,
    closeShare
  };
}