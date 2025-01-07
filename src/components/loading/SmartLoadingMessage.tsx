import React, { useState, useEffect } from 'react';
import { Loader2 } from 'lucide-react';

export function SmartLoadingMessage() {
  const [showExtendedMessage, setShowExtendedMessage] = useState(false);

  useEffect(() => {
    const timer = setTimeout(() => {
      setShowExtendedMessage(true);
    }, 3000);

    return () => clearTimeout(timer);
  }, []);

  return (
    <div className="flex flex-col items-center justify-center min-h-[200px] text-gray-600">
      <Loader2 className="w-8 h-8 animate-spin mb-4" />
      <p className="text-center">
        {showExtendedMessage
          ? "It's taking a while to load, please hang on..."
          : "Loading..."}
      </p>
    </div>
  );
}