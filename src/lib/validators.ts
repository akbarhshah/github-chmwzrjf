import { z } from 'zod';

export const contactFormSchema = z.object({
  name: z.string()
    .min(2, 'Name must be at least 2 characters')
    .max(50, 'Name must be less than 50 characters')
    .transform(v => v.trim()),
  email: z.string()
    .email('Please enter a valid email address')
    .transform(v => v.trim().toLowerCase()),
  subject: z.string()
    .min(3, 'Subject must be at least 3 characters')
    .max(100, 'Subject must be less than 100 characters')
    .transform(v => v.trim()),
  message: z.string()
    .min(10, 'Please provide more details in your message (minimum 10 characters)')
    .max(1000, 'Message is too long (maximum 1000 characters)')
    .transform(v => v.trim())
});