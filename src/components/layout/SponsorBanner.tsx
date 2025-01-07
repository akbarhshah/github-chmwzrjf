import React from 'react';

export function SponsorBanner() {
  return (
    <div className="bg-gray-50 border border-gray-100 rounded-lg p-4 text-center text-sm text-gray-600 mt-8">
      Support our app—
      <a href="/contact" className="text-blue-600 hover:underline">
        contact us
      </a>
      {' '}for sponsorship opportunities!
    </div>
  );
}