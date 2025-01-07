/*
  # Restore facts data
  
  1. Changes
    - Restore all facts with their detailed explanations
    - Reset view counts to 0
*/

-- Reset facts data
TRUNCATE TABLE facts;

-- Reinsert all facts
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
    '[{"title":"The Story","content":"The human brain''s remarkable ability to process images in just 13 milliseconds showcases the extraordinary evolution of our visual system. This ultra-fast processing capability emerged as a crucial survival mechanism, allowing our ancestors to quickly identify potential threats or opportunities in their environment. The speed of visual processing is particularly impressive when you consider the complexity involved: visual input must travel through the retina, along the optic nerve, and through various regions of the visual cortex to create meaningful perception.\n\nRecent research has revealed that our brains process far more information than we consciously realize. This unconscious processing happens continuously, with only a small portion reaching our conscious awareness. The implications of this discovery extend far beyond pure science, influencing fields from education to artificial intelligence development.\n\nScientists studying this phenomenon have found that this rapid processing capability is deeply integrated into our neural architecture, representing millions of years of evolutionary refinement. Understanding how our brains achieve this remarkable feat has become crucial for developing better teaching methods and more efficient computer vision systems, demonstrating how basic research into human perception can lead to practical applications across multiple fields."}]'
  ),
  (
    'Honey never spoils. Archaeologists have found pots of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible.',
    'National Geographic',
    'https://www.nationalgeographic.com/culture/article/honey-in-archaeology',
    'History',
    30,
    'active',
    'https://images.unsplash.com/photo-1587049352846-4a222e784d38?auto=format&fit=crop&q=80',
    '[{"title":"The Story","content":"The extraordinary preservation properties of honey represent one of nature''s most remarkable achievements in chemical engineering. The secret behind honey''s eternal shelf life lies in its unique chemical composition - a precise combination of low moisture content and high acidity that creates an environment where bacteria simply cannot survive. This remarkable preservation capability wasn''t just a curiosity for ancient civilizations; it was a vital discovery that shaped their culture and practices.\n\nThe ancient Egyptians, in particular, recognized honey''s special properties and integrated it deeply into their society. They used it not just as a sweetener, but as a central element in their religious ceremonies and medical treatments. The discovery of still-edible honey in ancient Egyptian tombs thousands of years later serves as a testament to their understanding of its preservative powers.\n\nToday, modern science has helped us understand exactly why honey has these incredible properties, and this knowledge has led to valuable applications in contemporary medicine. The same antimicrobial properties that keep honey fresh indefinitely make it an effective treatment for wounds and burns, bridging ancient wisdom with modern medical practice."}]'
  ),
  (
    'A day on Venus is longer than its year. Venus takes 243 Earth days to rotate on its axis but only 225 Earth days to orbit the Sun.',
    'NASA',
    'https://solarsystem.nasa.gov/planets/venus/overview/',
    'Space',
    35,
    'active',
    'https://images.unsplash.com/photo-1614728894747-a83421e2b9c9?auto=format&fit=crop&q=80',
    '[{"title":"The Story","content":"Venus''s peculiar rotation pattern, where a single day lasts longer than its year, tells a fascinating story about our solar system''s diversity. This unusual characteristic results from its retrograde rotation - spinning in the opposite direction to most planets in our solar system.\n\nThis extraordinary rotation pattern has profound effects on Venus''s environment. The planet''s slow spin contributes to its extreme surface conditions, creating one of the most hostile environments in our solar system. As Venus rotates so slowly, each part of its surface remains exposed to the Sun''s intense radiation for extended periods.\n\nThe study of Venus''s unique rotation has become increasingly important for understanding planetary evolution and climate dynamics. Scientists believe that this unusual rotation may have resulted from a massive collision early in the planet''s history, highlighting how random cosmic events can fundamentally shape a planet''s destiny."}]'
  );

-- Reset view counts
UPDATE facts SET view_count = 0;