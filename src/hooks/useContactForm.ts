import { useState, ChangeEvent, FormEvent } from 'react';
import { supabase } from '@/lib/supabase';
import { contactFormSchema } from '@/lib/validators';
import type { ContactFormData } from '@/types/contact';
import { ZodError } from 'zod';

export function useContactForm() {
  const [formData, setFormData] = useState<ContactFormData>({
    name: '',
    email: '',
    subject: '',
    message: ''
  });
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [errors, setErrors] = useState<Partial<Record<keyof ContactFormData, string>>>({});
  const [submitError, setSubmitError] = useState<string | null>(null);
  const [success, setSuccess] = useState(false);

  const validateField = (name: keyof ContactFormData, value: string) => {
    try {
      contactFormSchema.shape[name].parse(value);
      setErrors(prev => {
        const newErrors = { ...prev };
        delete newErrors[name];
        return newErrors;
      });
    } catch (error) {
      if (error instanceof ZodError) {
        const message = error.errors[0]?.message || `Invalid ${name}`;
        setErrors(prev => ({ ...prev, [name]: message }));
      }
    }
  };

  const handleChange = (e: ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
    validateField(name as keyof ContactFormData, value);
  };

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault();
    setIsSubmitting(true);
    setSubmitError(null);
    setSuccess(false);

    try {
      // Validate all fields
      const validatedData = contactFormSchema.parse(formData);

      const { error: dbError } = await supabase
        .from('contact_submissions')
        .insert([
          {
            ...validatedData,
            status: 'pending'
          }
        ]);

      if (dbError) throw new Error('Failed to send message. Please try again.');

      setSuccess(true);
      setFormData({
        name: '',
        email: '',
        subject: '',
        message: ''
      });
      setErrors({});
    } catch (err) {
      if (err instanceof ZodError) {
        const fieldErrors: Partial<Record<keyof ContactFormData, string>> = {};
        err.errors.forEach(error => {
          const field = error.path[0] as keyof ContactFormData;
          fieldErrors[field] = error.message;
        });
        setErrors(fieldErrors);
        setSubmitError('Please fix the errors in the form.');
      } else if (err instanceof Error) {
        setSubmitError(err.message);
      } else {
        setSubmitError('Failed to send message. Please try again later.');
      }
      console.error('Contact form error:', err);
    } finally {
      setIsSubmitting(false);
    }
  };

  return {
    formData,
    isSubmitting,
    errors,
    submitError,
    success,
    handleChange,
    handleSubmit
  };
}