/*
  # Add Unusual Facts

  1. New Data
    - Add 10 new unusual facts to the facts table
    - Each fact includes detailed explanation and image
  2. Categories
    - Science
    - History
    - Biology
    - Psychology
    - Space
*/

INSERT INTO facts (content, source, source_url, category, read_time, status, image_url, detailed_explanation)
VALUES
  (
    'Sloths are so slow that algae grows on their fur, creating a natural camouflage in their rainforest habitat.',
    'National Geographic',
    'https://www.nationalgeographic.com/animals/mammals/facts/three-toed-sloth',
    'Biology',
    35,
    'active',
    'https://images.unsplash.com/photo-1577936981849-0fb8ca3a1d56?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The remarkable relationship between sloths and algae is one of nature''s most fascinating examples of symbiosis. Sloths move so slowly that their fur becomes a miniature ecosystem, hosting not just algae but also various moths, beetles, and even fungi. The algae provides camouflage and extra nutrients when the sloth grooms itself, while the sloth''s fur provides a stable environment for the algae to thrive.\n\nThis unique adaptation is perfectly suited to their lifestyle in the rainforest canopy. Their slow movement conserves energy, which is crucial given their low-calorie diet of leaves. The greenish tint from the algae helps them blend in with their surroundings, making them less visible to predators like harpy eagles and jaguars.\n\nRecent studies have shown that some compounds found in sloth fur algae may have potential medical applications, including fighting certain types of cancer and bacteria. This discovery highlights how nature''s unusual adaptations can sometimes lead to unexpected benefits for human medicine.'
    ))
  ),
  (
    'The average cumulus cloud weighs around 1.1 million pounds due to the water droplets it contains.',
    'American Meteorological Society',
    'https://www.ametsoc.org/index.cfm/ams/education-careers/education-program/atmospheric-science-topics/',
    'Science',
    40,
    'active',
    'https://images.unsplash.com/photo-1567017469553-d1b219af5831?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The concept of a cloud weighing more than several hundred elephants seems counterintuitive, yet it''s a fascinating demonstration of how water behaves in our atmosphere. A typical cumulus cloud consists of countless tiny water droplets suspended in the air, and while each droplet is minuscule, their combined mass is substantial.\n\nThe reason clouds float despite their enormous weight is due to air density differences. The water droplets are spread out over a large volume, making the cloud''s overall density slightly lower than the surrounding air. This principle is similar to how a massive steel ship can float on water.\n\nUnderstanding cloud weight and behavior is crucial for meteorology and climate science. These floating water reservoirs play a vital role in Earth''s water cycle and climate regulation, demonstrating how something that appears light and fluffy can have such a significant impact on our planet''s systems.'
    ))
  ),
  (
    'Honeybees can recognize human faces, demonstrating remarkable visual learning abilities despite their tiny brains.',
    'Science Journal',
    'https://www.science.org/doi/10.1126/science.172.3981.408',
    'Biology',
    45,
    'active',
    'https://images.unsplash.com/photo-1576363389816-a4a8cbf23a1a?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The discovery that honeybees can recognize human faces challenges our understanding of intelligence and brain size. These insects, with brains smaller than a grain of rice, can be trained to distinguish between different human faces with remarkable accuracy. This ability suggests that complex visual processing doesn''t necessarily require a large brain.\n\nResearchers found that bees use a technique called configural processing, the same method humans use to recognize faces. They piece together the arrangement of features rather than focusing on individual elements. This parallel between bee and human visual processing provides fascinating insights into the evolution of intelligence.\n\nThis finding has implications beyond biology, influencing fields like artificial intelligence and computer vision. Understanding how bees achieve complex visual recognition with minimal neural hardware could help develop more efficient facial recognition algorithms.'
    ))
  ),
  (
    'The moon has moonquakes that can last for up to three hours due to its less rigid structure compared to Earth.',
    'NASA Lunar Science Institute',
    'https://nssdc.gsfc.nasa.gov/planetary/lunar/apollo_seismic.html',
    'Space',
    50,
    'active',
    'https://images.unsplash.com/photo-1522030299830-16b8d3d049fe?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'Moonquakes, first discovered during the Apollo missions, reveal fascinating differences between Earth and lunar geology. Unlike earthquakes, which typically last for a few minutes, moonquakes can continue for hours because the Moon''s more rigid structure allows seismic waves to travel with less dampening.\n\nThere are four different types of moonquakes: deep moonquakes from internal movements, vibrations from meteorite impacts, thermal quakes caused by the Moon''s surface expanding and contracting, and shallow moonquakes from tectonic activity. The Moon''s lack of water and different composition means these quakes behave differently than on Earth.\n\nStudying moonquakes helps scientists understand the Moon''s internal structure and evolution. This knowledge is crucial for planning future lunar missions and potential lunar bases, as understanding seismic activity is essential for safe construction on the Moon.'
    ))
  ),
  (
    'The Eiffel Tower can grow up to 6 inches taller during summer due to thermal expansion of the iron structure.',
    'Société d''Exploitation de la Tour Eiffel',
    'https://www.toureiffel.paris/en/the-monument/structure',
    'Science',
    40,
    'active',
    'https://images.unsplash.com/photo-1543349689-9a4d426bee8e?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The Eiffel Tower''s height fluctuation is a dramatic example of thermal expansion, a property of materials that causes them to change size with temperature. Built from puddled iron, the tower''s metal structure expands when heated and contracts when cooled, leading to noticeable height variations between seasons.\n\nThis natural phenomenon was actually anticipated by Gustave Eiffel and his engineers during the tower''s design. They incorporated expansion joints and other features to accommodate these changes without compromising the structure''s integrity. The tower''s ability to safely flex and move with temperature changes has contributed to its longevity.\n\nModern engineers continue to monitor these movements, using them to better understand how large metal structures behave over time. This knowledge has influenced the design of many contemporary skyscrapers and bridges.'
    ))
  ),
  (
    'A day on Mercury is longer than its year. Mercury takes 88 Earth days to orbit the Sun but 176 Earth days to complete one rotation.',
    'European Space Agency',
    'https://www.esa.int/Science_Exploration/Space_Science/Mercury_quick_facts',
    'Space',
    45,
    'active',
    'https://images.unsplash.com/photo-1614732414444-096e5f1122d5?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'Mercury''s unusual day-night cycle is a consequence of its unique orbital characteristics. As the closest planet to the Sun, Mercury''s orbit is heavily influenced by solar gravity, leading to a peculiar relationship between its rotational and orbital periods. This creates a situation where a single day on Mercury lasts longer than its entire year.\n\nThis phenomenon results from Mercury''s 3:2 spin-orbit resonance, meaning it rotates three times for every two orbits around the Sun. Combined with its highly elliptical orbit, this creates extreme temperature variations between day and night sides, with temperatures ranging from -180°C to 430°C.\n\nStudying Mercury''s orbital mechanics helps scientists understand how planets evolve under strong gravitational influences, providing insights into the formation and dynamics of solar systems throughout the universe.'
    ))
  ),
  (
    'Octopuses have nine brains - one central brain and eight additional brains, one in each tentacle.',
    'Marine Biological Laboratory',
    'https://www.mbl.edu/news/octopus-intelligence',
    'Biology',
    35,
    'active',
    'https://images.unsplash.com/photo-1545671913-b89ac1b4ac10?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The octopus''s distributed nervous system represents one of nature''s most remarkable solutions to the challenge of controlling a complex body. Each arm contains its own neural network capable of processing information and controlling movement independently, while the central brain coordinates overall behavior.\n\nThis unique arrangement allows octopuses to perform complex tasks with minimal central processing. Each arm can solve problems and manipulate objects even when disconnected from the central brain, demonstrating a level of autonomous intelligence unprecedented in the animal kingdom.\n\nStudying octopus neurology has led to innovations in robotics and artificial intelligence, particularly in the development of soft robots and distributed control systems. Their unique nervous system architecture provides insights into alternative ways of organizing intelligence and consciousness.'
    ))
  ),
  (
    'The average person spends six months of their lifetime waiting for red lights to turn green.',
    'Institute of Transportation Engineers',
    'https://www.ite.org/technical-resources/topics/traffic-engineering/',
    'Psychology',
    30,
    'active',
    'https://images.unsplash.com/photo-1533530088106-8c5c0c970bba?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'This seemingly mundane statistic reveals fascinating insights about modern urban life and human psychology. The cumulative time spent waiting at traffic lights represents a significant portion of our lives, yet it''s a relatively recent phenomenon in human history, emerging with the rise of automobile culture.\n\nPsychological studies show that time spent waiting at red lights feels longer than it actually is, due to the phenomenon of "temporal illusion." This perception is influenced by factors like anticipation, urgency, and the inability to control the situation.\n\nThis understanding has led to innovations in traffic management, including smart traffic systems that adapt to traffic patterns and synchronized light systems that create "green waves." These technologies aim to reduce wait times and improve both traffic flow and quality of life in urban areas.'
    ))
  ),
  (
    'Bananas are berries, but strawberries aren''t. Botanically, berries have seeds inside the flesh, while strawberries have seeds on the outside.',
    'Botanical Society of America',
    'https://botany.org/fruit-classification',
    'Science',
    40,
    'active',
    'https://images.unsplash.com/photo-1528825871115-3581a5387919?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The botanical classification of fruits often contradicts our everyday understanding, and nothing illustrates this better than the case of bananas and strawberries. While we commonly think of berries as small, round fruits, botanists have a much more specific definition based on how the fruit develops from the flower.\n\nA true berry develops from a single flower with one ovary and typically has several seeds embedded in its flesh. Bananas, despite their elongated shape and lack of obvious seeds in cultivated varieties, meet all the botanical requirements of a berry. Surprisingly, this means bananas share a classification with tomatoes and eggplants.\n\nStrawberries, on the other hand, develop from a single flower with multiple ovaries, making them "aggregate accessory fruits." What we think of as the seeds on the outside are actually individual fruits themselves, each containing a single seed.'
    ))
  ),
  (
    'The Great Pyramid of Giza was the tallest man-made structure in the world for over 3,800 years, until the completion of Lincoln Cathedral in England in 1311.',
    'Archaeological Institute of America',
    'https://www.archaeological.org/programs/public/ancient-sites/giza/',
    'History',
    55,
    'active',
    'https://images.unsplash.com/photo-1503177119275-0aa32b3a9368?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The Great Pyramid''s reign as the world''s tallest structure is a testament to the extraordinary engineering capabilities of ancient civilizations. Standing at an original height of 481 feet (146.5 meters), it remained unmatched for nearly four millennia, demonstrating the remarkable achievement of its ancient Egyptian builders.\n\nIts construction, using approximately 2.3 million limestone blocks weighing an average of 2.5 tons each, represents one of humanity''s greatest architectural accomplishments. The precision of its construction is still studied by modern engineers, with the base having an average error of only 2.3 centimeters across its entire length.\n\nThe fact that it took until the 14th century for humans to build a taller structure highlights both the magnitude of the ancient Egyptians'' achievement and the technological limitations that persisted throughout much of human history. This long-standing record serves as a humbling reminder of our ancestors'' capabilities.'
    ))
  );