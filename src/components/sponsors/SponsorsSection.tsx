import React from 'react';
import { ExternalLink } from 'lucide-react';
import { Card } from '../ui/Card';
import { SponsorBadge } from './SponsorBadge';

interface Sponsor {
  id: string;
  company_name: string;
  website: string;
  display_config: {
    message?: string;
    logo_url?: string;
  };
}

export function SponsorsSection() {
  const sponsors: Sponsor[] = [
    {
      id: '1',
      company_name: 'Sponsor Name',
      website: 'https://example.com',
      display_config: {
        message: 'Empowering knowledge through technology',
        logo_url:
          'https://images.unsplash.com/photo-1560179707-f14e90ef3623?w=100&h=100&fit=crop',
      },
    },
  ];

  if (sponsors.length === 0) return null;

  return (
    <div className="mt-8 mb-12">
      <div className="space-y-4">
        {sponsors.map((sponsor) => (
          <Card key={sponsor.id} className="p-6 bg-[#f8fafc]">
            <div className="flex items-start justify-between gap-4">
              <a
                href={sponsor.website}
                target="_blank"
                rel="noopener noreferrer"
                className="flex items-center gap-4 group flex-1 min-w-0"
              >
                {sponsor.display_config.logo_url && (
                  <img
                    src={sponsor.display_config.logo_url}
                    alt={`${sponsor.company_name} logo`}
                    className="w-14 h-14 rounded-lg object-cover border border-gray-100"
                  />
                )}
                <div className="flex-1 min-w-0">
                  <h3 className="font-medium text-[#1a2b3b] truncate group-hover:text-blue-600">
                    {sponsor.company_name}
                  </h3>
                  {sponsor.display_config.message && (
                    <p className="text-sm text-[#4b5563] line-clamp-2 mt-1">
                      {sponsor.display_config.message}
                    </p>
                  )}
                </div>
              </a>
              <div className="flex flex-col items-end gap-2">
                <SponsorBadge />
                <ExternalLink className="w-4 h-4 text-[#9ca3af]" />
              </div>
            </div>
          </Card>
        ))}
      </div>
    </div>
  );
}
