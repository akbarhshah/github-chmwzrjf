export interface Fact {
  id: string;
  content: string;
  source: string;
  source_url?: string;
  image_url?: string;
  category: string;
  read_time: number;
  status: 'active' | 'draft' | 'archived';
  view_count: number;
  detailed_explanation?: Array<{
    title: string;
    content: string;
  }>;
  created_at: string;
  updated_at: string;
}