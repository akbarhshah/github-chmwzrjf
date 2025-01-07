-- Refresh facts data
TRUNCATE TABLE facts;

-- Reinsert facts with proper data
INSERT INTO facts (content, source, source_url, category, read_time, status, image_url, detailed_explanation)
VALUES
  (
    'The human brain processes images seen for as little as 13 milliseconds.',
    'MIT Research',
    'https://news.mit.edu/2014/in-the-blink-of-an-eye-0116',
    'Science',
    45,
    'active',
    'https://images.unsplash.com/photo-1559757175-0eb30cd8c063?auto=format&fit=crop&q=80',
    '[{"title":"The Science Behind It","content":"The human brain''s remarkable ability to process images in just 13 milliseconds showcases the extraordinary evolution of our visual system..."}]'
  );

-- Add more facts here...

-- Reset view counts
UPDATE facts SET view_count = 0;