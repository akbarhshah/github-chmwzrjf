export interface ContactFormData {
  name: string;
  email: string;
  subject: string;
  message: string;
}

export interface ContactSubmission extends ContactFormData {
  id: string;
  created_at: string;
  status: 'pending' | 'sent' | 'failed';
}