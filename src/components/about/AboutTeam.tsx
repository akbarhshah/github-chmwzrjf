import React from 'react';

export function AboutTeam() {
  const team = [
    {
      name: "Sarah Chen",
      role: "Content Director",
      image: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80"
    },
    {
      name: "Michael Rodriguez",
      role: "Head of Research",
      image: "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?auto=format&fit=crop&q=80"
    },
    {
      name: "Emily Thompson",
      role: "Senior Editor",
      image: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80"
    }
  ];

  return (
    <section className="py-12">
      <h2 className="text-2xl font-bold text-brand-900 dark:text-white mb-8 text-center">
        Meet Our Team
      </h2>
      <div className="grid md:grid-cols-3 gap-8">
        {team.map((member, index) => (
          <div 
            key={index}
            className="text-center"
          >
            <div className="w-32 h-32 mx-auto mb-4">
              <img
                src={member.image}
                alt={member.name}
                className="w-full h-full object-cover rounded-full border-4 border-brand-100 dark:border-brand-900"
              />
            </div>
            <h3 className="text-lg font-semibold text-brand-900 dark:text-white">
              {member.name}
            </h3>
            <p className="text-brand-600 dark:text-brand-300">
              {member.role}
            </p>
          </div>
        ))}
      </div>
    </section>
  );
}