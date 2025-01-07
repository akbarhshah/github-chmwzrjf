/*
  # Update fact explanations to single stories

  This migration updates the detailed_explanation field to contain single narrative stories
  instead of sectioned content with subheadings.
*/

DO $$ 
BEGIN
  UPDATE facts
  SET detailed_explanation = jsonb_build_array(jsonb_build_object(
    'title', 'The Story',
    'content', 
    CASE 
      WHEN content LIKE '%brain processes images%' THEN 
        'The human brain''s remarkable ability to process images in just 13 milliseconds showcases the extraordinary evolution of our visual system. This ultra-fast processing capability emerged as a crucial survival mechanism, allowing our ancestors to quickly identify potential threats or opportunities in their environment. The speed of visual processing is particularly impressive when you consider the complexity involved: visual input must travel through the retina, along the optic nerve, and through various regions of the visual cortex to create meaningful perception.

Recent research has revealed that our brains process far more information than we consciously realize. This unconscious processing happens continuously, with only a small portion reaching our conscious awareness. The implications of this discovery extend far beyond pure science, influencing fields from education to artificial intelligence development.

Scientists studying this phenomenon have found that this rapid processing capability is deeply integrated into our neural architecture, representing millions of years of evolutionary refinement. Understanding how our brains achieve this remarkable feat has become crucial for developing better teaching methods and more efficient computer vision systems, demonstrating how basic research into human perception can lead to practical applications across multiple fields.'

      WHEN content LIKE '%Honey never spoils%' THEN
        'The extraordinary preservation properties of honey represent one of nature''s most remarkable achievements in chemical engineering. The secret behind honey''s eternal shelf life lies in its unique chemical composition - a precise combination of low moisture content and high acidity that creates an environment where bacteria simply cannot survive. This remarkable preservation capability wasn''t just a curiosity for ancient civilizations; it was a vital discovery that shaped their culture and practices.

The ancient Egyptians, in particular, recognized honey''s special properties and integrated it deeply into their society. They used it not just as a sweetener, but as a central element in their religious ceremonies and medical treatments. The discovery of still-edible honey in ancient Egyptian tombs thousands of years later serves as a testament to their understanding of its preservative powers.

Today, modern science has helped us understand exactly why honey has these incredible properties, and this knowledge has led to valuable applications in contemporary medicine. The same antimicrobial properties that keep honey fresh indefinitely make it an effective treatment for wounds and burns, bridging ancient wisdom with modern medical practice. This enduring usefulness of honey, from ancient food preservation to modern medical applications, showcases how nature''s solutions often remain relevant across millennia.'

      WHEN content LIKE '%day on Venus%' THEN
        'Venus''s peculiar rotation pattern, where a single day lasts longer than its year, tells a fascinating story about our solar system''s diversity. This unusual characteristic, with Venus taking 243 Earth days to rotate on its axis but only 225 Earth days to orbit the Sun, results from its retrograde rotation - spinning in the opposite direction to most planets in our solar system.

This extraordinary rotation pattern has profound effects on Venus''s environment. The planet''s slow spin contributes to its extreme surface conditions, creating one of the most hostile environments in our solar system. As Venus rotates so slowly, each part of its surface remains exposed to the Sun''s intense radiation for extended periods, contributing to surface temperatures hot enough to melt lead.

The study of Venus''s unique rotation has become increasingly important for understanding planetary evolution and climate dynamics. Scientists believe that this unusual rotation may have resulted from a massive collision early in the planet''s history, highlighting how random cosmic events can fundamentally shape a planet''s destiny. This research has broader implications for studying climate patterns on Earth and other planets, demonstrating how understanding our planetary neighbors can provide crucial insights about our own world.'

      WHEN content LIKE '%oranges weren''t orange%' THEN
        'The surprising history of oranges reveals a fascinating story about how human cultivation has transformed the fruits we know today. The original oranges, native to Southeast Asia, were actually green - a fact that challenges our basic assumptions about this familiar fruit. These ancestral citrus fruits developed their now-characteristic orange color through centuries of selective breeding and cultivation.

The journey of oranges from their green origins to the bright orange fruit we know today parallels the development of global trade routes and agricultural practices. As these fruits traveled from Asia through the Middle East and into Europe, farmers selected and bred varieties that exhibited the most desirable characteristics, gradually transforming both their appearance and flavor.

The linguistic legacy of this fruit is equally fascinating. The word ''orange'' comes from the Sanskrit ''naranga'' through Persian and Arabic, eventually reaching European languages. Remarkably, the fruit gave its name to the color, not the other way around - making it one of the few colors in English named after an object. This etymology reveals how deeply intertwined our language is with the history of trade and agriculture, showing how the movement of foods across cultures can shape not just our diets, but our very language.'

      WHEN content LIKE '%Octopuses have three hearts%' THEN
        'The octopus''s three-heart system represents one of nature''s most ingenious solutions to the challenges of marine life. This remarkable circulatory system evolved to efficiently pump blood through the creature''s complex body structure, enabling both its extraordinary intelligence and its incredible agility. Two of these hearts work specifically to move blood through each of the gills, while the third heart circulates the oxygenated blood throughout the rest of the body.

This unique adaptation allows octopuses to thrive in various marine environments and depths, showcasing evolution''s ability to develop sophisticated solutions to biological challenges. The system is so efficient that it enables octopuses to quickly adapt to changing conditions and maintain high levels of activity, essential for both hunting and evading predators.

The three-heart system also helps explain how octopuses can perform their remarkable feats of strength and dexterity while maintaining their high intelligence. This efficient oxygen distribution system ensures their large brains receive a constant supply of oxygen, supporting their problem-solving abilities and learning capabilities. The octopus''s circulatory system thus stands as a testament to the incredible diversity of life on Earth, demonstrating how evolution can produce unique solutions to the challenges of survival.'
    END
  ))
  WHERE status = 'active';
END $$;