/*
  # Add Sample Facts

  1. Changes
    - Insert initial set of fascinating facts into the facts table
    - All facts are set to 'active' status
    - Each fact includes source attribution and read time
*/

INSERT INTO facts (content, source, source_url, category, read_time, status)
VALUES
  (
    'The human brain processes images seen for as little as 13 milliseconds, making it one of the fastest image processing systems known.',
    'MIT Research',
    'https://news.mit.edu/2014/in-the-blink-of-an-eye-0116',
    'Science',
    45,
    'active'
  ),
  (
    'Honey never spoils. Archaeologists have found pots of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible.',
    'National Geographic',
    'https://www.nationalgeographic.com/culture/article/honey-in-archaeology',
    'History',
    30,
    'active'
  ),
  (
    'A day on Venus is longer than its year. Venus takes 243 Earth days to rotate on its axis but only 225 Earth days to orbit the Sun.',
    'NASA',
    'https://solarsystem.nasa.gov/planets/venus/overview/',
    'Space',
    35,
    'active'
  ),
  (
    'The first oranges weren''t orange. The original oranges from Southeast Asia were actually green. The color orange was named after the fruit, and not the other way around.',
    'Smithsonian Magazine',
    'https://www.smithsonianmag.com/science-nature/what-orange-before-orange-180982647/',
    'History',
    40,
    'active'
  ),
  (
    'Octopuses have three hearts. Two pump blood to the gills, while the third circulates it to the rest of the body.',
    'Scientific American',
    'https://www.scientificamerican.com/article/octopus-arms-think-for-themselves/',
    'Biology',
    25,
    'active'
  );