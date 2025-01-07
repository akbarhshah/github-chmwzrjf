/*
  # Add explanations and images to facts table

  1. Changes
    - Add image_url column to facts table
    - Add detailed_explanation column to facts table
    - Update existing facts with explanations and images

  2. Security
    - Maintain existing RLS policies
*/

-- Add new columns
ALTER TABLE facts 
ADD COLUMN IF NOT EXISTS image_url text,
ADD COLUMN IF NOT EXISTS detailed_explanation jsonb DEFAULT '[]';

-- Update existing facts with explanations and images
UPDATE facts 
SET 
  image_url = CASE 
    WHEN category = 'Science' THEN 'https://images.unsplash.com/photo-1559757175-0eb30cd8c063?auto=format&fit=crop&q=80'
    WHEN category = 'History' THEN 'https://images.unsplash.com/photo-1461360370896-922624d12aa1?auto=format&fit=crop&q=80'
    WHEN category = 'Space' THEN 'https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?auto=format&fit=crop&q=80'
    WHEN category = 'Biology' THEN 'https://images.unsplash.com/photo-1530026405186-ed1f139313f8?auto=format&fit=crop&q=80'
    ELSE NULL
  END,
  detailed_explanation = CASE 
    WHEN content LIKE '%brain processes images%' THEN 
      '[
        {
          "title": "The Science Behind It",
          "content": "This remarkable capability demonstrates the extraordinary evolution of our visual processing system. The discovery that our brains can identify and process images in just 13 milliseconds has profound implications for understanding human consciousness and perception."
        },
        {
          "title": "Technical Process",
          "content": "The speed of visual processing is particularly impressive considering the complexity. The brain must receive visual input through the retina, transmit it through the optic nerve, and process it in various regions of the visual cortex to create meaningful perception."
        },
        {
          "title": "Evolutionary Perspective",
          "content": "This ultra-rapid processing capability evolved as a crucial survival mechanism. The ability to quickly identify potential threats or opportunities provided a significant evolutionary advantage to our ancestors."
        },
        {
          "title": "Current Research",
          "content": "Studies reveal our brains process much more information than we consciously realize. This unconscious processing happens continuously, with only a small portion reaching conscious awareness."
        },
        {
          "title": "Practical Applications",
          "content": "These findings have important implications for fields from education to artificial intelligence. Understanding rapid image processing could help develop better teaching methods and computer vision systems."
        }
      ]'::jsonb
    WHEN content LIKE '%Honey never spoils%' THEN
      '[
        {
          "title": "Chemical Properties",
          "content": "Honey''s eternal shelf life is due to its unique chemical composition. Its low moisture content and high acidity create an environment where bacteria cannot survive."
        },
        {
          "title": "Historical Significance",
          "content": "Ancient Egyptians used honey not only as a sweetener but also in religious ceremonies and medical treatments. Finding preserved honey in tombs provides insights into ancient Egyptian culture and preservation techniques."
        },
        {
          "title": "Modern Applications",
          "content": "The antimicrobial properties that keep honey fresh also make it valuable in modern medicine, particularly in wound treatment and as a natural preservative."
        }
      ]'::jsonb
    WHEN content LIKE '%day on Venus%' THEN
      '[
        {
          "title": "Planetary Mechanics",
          "content": "Venus'' unusual day length is due to its retrograde rotation, spinning in the opposite direction to most planets. This unique characteristic affects its atmospheric dynamics and surface conditions."
        },
        {
          "title": "Atmospheric Impact",
          "content": "The slow rotation contributes to Venus'' extreme surface temperatures and pressure. The extended exposure to sunlight and thick atmosphere create a runaway greenhouse effect."
        },
        {
          "title": "Research Implications",
          "content": "Understanding Venus'' rotation helps scientists study atmospheric dynamics and climate change on other planets, including Earth."
        }
      ]'::jsonb
    WHEN content LIKE '%oranges weren''t orange%' THEN
      '[
        {
          "title": "Historical Context",
          "content": "The original green oranges from Southeast Asia developed their orange color through selective breeding. This process took centuries of cultivation and trade."
        },
        {
          "title": "Etymology",
          "content": "The word ''orange'' comes from the Sanskrit ''naranga'' through Persian and Arabic. The fruit gave its name to the color, making it one of few colors named after an object."
        },
        {
          "title": "Cultural Impact",
          "content": "This fact challenges our assumptions about color and naming conventions, showing how language and culture shape our perception of everyday objects."
        }
      ]'::jsonb
    WHEN content LIKE '%Octopuses have three hearts%' THEN
      '[
        {
          "title": "Biological Adaptation",
          "content": "The three-heart system evolved to efficiently pump blood through the octopus''s complex body structure. This adaptation enables their remarkable agility and intelligence."
        },
        {
          "title": "Circulatory System",
          "content": "Two branchial hearts pump blood through each of the gills, while the systemic heart circulates oxygenated blood to the rest of the body. This system allows for optimal oxygen distribution."
        },
        {
          "title": "Evolutionary Significance",
          "content": "This unique circulatory system demonstrates how evolution can produce diverse solutions to biological challenges, contributing to the octopus''s success as a species."
        }
      ]'::jsonb
    ELSE '[]'::jsonb
  END
WHERE status = 'active';