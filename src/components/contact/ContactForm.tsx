import React from 'react';
import { Send } from 'lucide-react';
import { Button } from '@/components/ui/Button';
import { Alert } from '@/components/ui/Alert';
import { useContactForm } from '@/hooks/useContactForm';

export function ContactForm() {
  const { 
    formData, 
    isSubmitting, 
    errors,
    submitError,
    success, 
    handleChange, 
    handleSubmit 
  } = useContactForm();

  return (
    <form onSubmit={handleSubmit} className="space-y-6">
      <div>
        <label htmlFor="name" className="block text-sm font-medium text-brand-700 dark:text-brand-300 mb-2">
          Name
        </label>
        <input
          type="text"
          id="name"
          name="name"
          value={formData.name}
          onChange={handleChange}
          required
          className={`w-full px-4 py-2 rounded-lg border bg-white dark:bg-gray-800 text-brand-900 dark:text-white focus:ring-2 focus:ring-brand-500 ${
            errors.name 
              ? 'border-red-300 dark:border-red-700' 
              : 'border-brand-200 dark:border-gray-700'
          }`}
        />
        {errors.name && (
          <p className="mt-1 text-sm text-red-600 dark:text-red-400">{errors.name}</p>
        )}
      </div>

      <div>
        <label htmlFor="email" className="block text-sm font-medium text-brand-700 dark:text-brand-300 mb-2">
          Email
        </label>
        <input
          type="email"
          id="email"
          name="email"
          value={formData.email}
          onChange={handleChange}
          required
          className={`w-full px-4 py-2 rounded-lg border bg-white dark:bg-gray-800 text-brand-900 dark:text-white focus:ring-2 focus:ring-brand-500 ${
            errors.email 
              ? 'border-red-300 dark:border-red-700' 
              : 'border-brand-200 dark:border-gray-700'
          }`}
        />
        {errors.email && (
          <p className="mt-1 text-sm text-red-600 dark:text-red-400">{errors.email}</p>
        )}
      </div>

      <div>
        <label htmlFor="subject" className="block text-sm font-medium text-brand-700 dark:text-brand-300 mb-2">
          Subject
        </label>
        <input
          type="text"
          id="subject"
          name="subject"
          value={formData.subject}
          onChange={handleChange}
          required
          className={`w-full px-4 py-2 rounded-lg border bg-white dark:bg-gray-800 text-brand-900 dark:text-white focus:ring-2 focus:ring-brand-500 ${
            errors.subject 
              ? 'border-red-300 dark:border-red-700' 
              : 'border-brand-200 dark:border-gray-700'
          }`}
        />
        {errors.subject && (
          <p className="mt-1 text-sm text-red-600 dark:text-red-400">{errors.subject}</p>
        )}
      </div>

      <div>
        <label htmlFor="message" className="block text-sm font-medium text-brand-700 dark:text-brand-300 mb-2">
          Message
        </label>
        <textarea
          id="message"
          name="message"
          value={formData.message}
          onChange={handleChange}
          required
          rows={5}
          className={`w-full px-4 py-2 rounded-lg border bg-white dark:bg-gray-800 text-brand-900 dark:text-white focus:ring-2 focus:ring-brand-500 ${
            errors.message 
              ? 'border-red-300 dark:border-red-700' 
              : 'border-brand-200 dark:border-gray-700'
          }`}
        />
        {errors.message && (
          <p className="mt-1 text-sm text-red-600 dark:text-red-400">{errors.message}</p>
        )}
      </div>

      {submitError && (
        <Alert type="error" message={submitError} />
      )}

      {success && (
        <Alert 
          type="success" 
          message="Thank you for your message! We'll get back to you soon."
        />
      )}

      <Button
        type="submit"
        disabled={isSubmitting || Object.keys(errors).length > 0}
        className="w-full"
      >
        <Send className="w-4 h-4 mr-2" />
        {isSubmitting ? 'Sending...' : 'Send Message'}
      </Button>
    </form>
  );
}