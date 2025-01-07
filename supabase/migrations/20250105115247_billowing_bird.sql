/*
  # Add more sample facts

  Adds 10 new interesting facts to the database covering various categories:
  - Technology
  - Nature
  - Psychology
  - History
  - Science
  - Space
  - Biology
*/

INSERT INTO facts (content, source, source_url, category, read_time, status, image_url, detailed_explanation)
VALUES
  (
    'The Great Wall of China is not visible from space with the naked eye, contrary to popular belief. This myth has been debunked by multiple astronauts.',
    'NASA',
    'https://www.nasa.gov/vision/space/workinginspace/great_wall.html',
    'Space',
    35,
    'active',
    'https://images.unsplash.com/photo-1508804185872-d7badad00f7d?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The enduring myth about the Great Wall of China being visible from space has captured imaginations for generations, but the reality tells a different story. This misconception likely originated during the early days of space exploration, when people assumed that since the Wall was humanity''s largest construction project, it must be visible from space.

In fact, from low Earth orbit (where most human spaceflight occurs), the Great Wall is barely visible, and only under perfect conditions. Even then, it''s not as prominent as other human-made structures like airports, large roads, and reservoirs. The wall''s construction materials and color blend too well with the surrounding landscape, making it practically indistinguishable from natural features when viewed from space.

The persistence of this myth reveals something fascinating about human nature - our desire to believe that our greatest construction achievements must be visible from the heavens. While the Great Wall is indeed one of humanity''s most impressive architectural achievements, its significance lies not in its visibility from space, but in its historical importance and engineering brilliance. The wall stands as a testament to human determination and ingenuity, even if it can''t be seen by astronauts with their naked eyes.'
    ))
  ),
  (
    'Bananas are berries, but strawberries aren''t. Botanically, a berry has seeds inside the flesh, like bananas, while strawberries have seeds on the outside.',
    'Botanical Society of America',
    'https://botany.org/fruit-classification',
    'Biology',
    40,
    'active',
    'https://images.unsplash.com/photo-1528825871115-3581a5387919?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The classification of fruits in botany often contradicts our everyday understanding, and nothing illustrates this better than the curious case of bananas and strawberries. While we commonly think of berries as small, round fruits, botanists have a much more specific definition. A true berry develops from a single flower with one ovary and typically has several seeds embedded in its flesh.

Bananas, despite their elongated shape and lack of obvious seeds (in cultivated varieties), meet all the botanical requirements of a berry. They develop from a single flower, have a soft middle, and contain seeds (though modern cultivated bananas have been bred to have tiny, underdeveloped seeds). Surprisingly, this means bananas share a classification with tomatoes, eggplants, and even avocados.

Strawberries, on the other hand, develop from a single flower with multiple ovaries, making them "aggregate accessory fruits." What we think of as the seeds on the outside of a strawberry are actually individual fruits themselves, called achenes, each containing a single seed. The red, fleshy part that we eat is actually the enlarged flower receptacle. This botanical quirk shows how scientific classification often differs from common perception, reminding us that nature''s categories are often more complex than they appear.'
    ))
  ),
  (
    'The average person spends 6 months of their lifetime waiting for red lights to turn green.',
    'National Association of City Transportation Officials',
    'https://nacto.org/publication/urban-street-design-guide/intersection-design-elements/traffic-signals/',
    'Psychology',
    30,
    'active',
    'https://images.unsplash.com/photo-1533530088106-8c5c0c970bba?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'Time is a precious resource, and few things highlight this more clearly than the cumulative hours we spend waiting at traffic lights. The seemingly brief moments we wait for red lights to turn green add up significantly over a lifetime, amounting to approximately six months of our lives. This calculation takes into account average commute times, frequency of encounters with traffic signals, and typical red light durations across different urban environments.

The psychological impact of these waiting periods is particularly interesting. Studies have shown that time spent waiting at red lights feels longer than it actually is, due to a phenomenon known as "temporal illusion." When we''re actively trying to reach a destination, these forced pauses can feel particularly frustrating, even though they''re essential for traffic safety and flow management.

This substantial time investment has spurred innovations in traffic management systems. Modern cities are implementing smart traffic lights that adapt to traffic patterns in real-time, and some are experimenting with AI-driven systems to optimize traffic flow. These advancements aim to reduce wait times while maintaining safety, showing how technology might help us reclaim some of those six months in the future.'
    ))
  ),
  (
    'A day on Mars is only 37 minutes longer than a day on Earth.',
    'NASA Mars Exploration Program',
    'https://mars.nasa.gov/allaboutmars/facts/',
    'Space',
    45,
    'active',
    'https://images.unsplash.com/photo-1614728894747-a83421e2b9c9?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The remarkable similarity between Earth''s and Mars'' day lengths is one of the most intriguing coincidences in our solar system. A Martian day, or "sol," is just 24 hours, 37 minutes, and 22 seconds long - a fact that has profound implications for both Mars exploration and potential future colonization.

This close match is particularly fortunate for Mars exploration missions. The human body''s circadian rhythm, which evolved to match Earth''s day-night cycle, can relatively easily adapt to the slightly longer Martian day. This has proven invaluable for mission controllers working on Mars rover projects, who often have to synchronize their work schedules with the Martian day to maximize the rovers'' operational efficiency.

The similarity in day length also hints at the shared early history of Earth and Mars. Both planets formed from the same spinning disk of material around the Sun, and their rotation rates were likely influenced by similar processes during their formation. However, while Earth maintained conditions favorable for life, Mars'' smaller size led to the loss of most of its atmosphere and water, dramatically altering its surface conditions while leaving its rotation largely unchanged.'
    ))
  ),
  (
    'Hummingbirds are the only birds that can fly backwards and upside down.',
    'National Audubon Society',
    'https://www.audubon.org/birds/hummingbirds',
    'Biology',
    35,
    'active',
    'https://images.unsplash.com/photo-1514395462725-fb4566210144?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'Hummingbirds represent one of nature''s most remarkable achievements in flight engineering. Their unique ability to fly backwards and upside down sets them apart in the avian world, making them masters of aerial maneuverability. This extraordinary capability is made possible by their specialized wing structure and unique flight muscles.

Unlike other birds, hummingbirds can rotate their wings in a figure-eight pattern, generating lift on both the forward and backward strokes. Their wing joints are essentially ball-and-socket joints, similar to human shoulders, allowing for an incredible range of motion. This, combined with their rapid wing beat of up to 80 times per second, enables them to hover with precision and fly in any direction.

The evolution of these capabilities is closely tied to their feeding strategy. As nectar feeders, hummingbirds need to maintain precise position control while feeding from flowers, often requiring them to hover in place or maneuver in tight spaces. Their amazing flight abilities also help them catch tiny insects in mid-air and defend their feeding territories from competitors. This perfect marriage of form and function demonstrates nature''s ability to develop highly specialized solutions to ecological challenges.'
    ))
  ),
  (
    'The first computer programmer was a woman named Ada Lovelace, who wrote the first algorithm intended to be processed by a machine in the 1840s.',
    'Computer History Museum',
    'https://computerhistory.org/pioneers/ada-lovelace/',
    'Technology',
    50,
    'active',
    'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'Ada Lovelace''s pioneering work in computer programming emerged from an extraordinary confluence of mathematical genius and poetic imagination. As the daughter of the romantic poet Lord Byron, Lovelace was encouraged by her mother to pursue mathematics and science, unusual for women in the 1800s. This education prepared her for a fateful collaboration with Charles Babbage on his theoretical Analytical Engine.

While translating an article about Babbage''s machine from French to English, Lovelace added her own notes, which ended up being three times longer than the original article. These notes included what is now recognized as the first computer program - an algorithm for calculating Bernoulli numbers. But more remarkably, she saw potential in the machine that even Babbage hadn''t recognized.

Lovelace understood that the Analytical Engine could manipulate symbols according to rules, making it capable of creating music or art if properly programmed. This insight, that computers could go beyond mere calculation, was revolutionary for its time. Her vision of computing''s potential was so far ahead of its time that it wouldn''t be fully appreciated until the computer age began, a century after her death. Today, Ada Lovelace is celebrated not only as the first programmer but as a visionary who glimpsed the future of computing.'
    ))
  ),
  (
    'Lightning strikes the Earth about 100 times every second.',
    'National Weather Service',
    'https://www.weather.gov/safety/lightning-science',
    'Science',
    40,
    'active',
    'https://images.unsplash.com/photo-1461511669078-d46bf351cd6e?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The phenomenon of lightning represents one of nature''s most spectacular displays of raw energy. With approximately 100 strikes hitting Earth every second, our planet experiences around 8 million lightning strikes per day. This continuous bombardment of electrical discharges plays a crucial role in Earth''s atmospheric chemistry and climate system.

Each lightning bolt can heat the air around it to temperatures five times hotter than the sun''s surface. This intense heat creates a rapid expansion of air, producing the characteristic thunder we hear. The process begins high in the clouds where ice particles collide and build up electrical charges. When the voltage difference between cloud and ground becomes great enough, the air between them breaks down and conducts electricity.

Beyond their dramatic display, lightning strikes serve several important ecological functions. They help fix nitrogen from the air into a form that plants can use, essentially acting as a natural fertilizer. Lightning-sparked fires, while destructive, also play a role in maintaining certain ecosystems. Some plant species even require fire for their seeds to germinate. Additionally, lightning may have played a crucial role in the origin of life on Earth, providing the energy needed to form complex organic molecules from simpler compounds.'
    ))
  ),
  (
    'The human body contains enough carbon to make around 900 pencils.',
    'American Chemical Society',
    'https://www.acs.org/education/resources/highschool/chemmatters/past-issues/archive-2013-2014/carbon.html',
    'Science',
    35,
    'active',
    'https://images.unsplash.com/photo-1579165466741-7f35e4755660?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The composition of the human body reveals fascinating connections between everyday objects and our own physical makeup. The fact that our bodies contain enough carbon to make approximately 900 pencils highlights the abundance of this essential element in living things. Carbon forms the backbone of all known life, making up about 18-20% of the human body by mass.

This carbon isn''t present in the same form as pencil lead (which is actually graphite), but rather in complex organic molecules that form our tissues, organs, and DNA. Every cell in our body contains carbon atoms arranged in intricate patterns, forming the basis of proteins, fats, and carbohydrates that keep us alive.

The journey of carbon through living systems is part of the global carbon cycle. The carbon atoms in our bodies today have existed since the formation of Earth, cycling through countless other living things before becoming part of us through the food we eat. These same atoms might once have been part of a dinosaur, a redwood tree, or countless other organisms throughout Earth''s history. After we die, these carbon atoms will continue their journey, becoming part of other living things, demonstrating the profound interconnectedness of all life on Earth.'
    ))
  ),
  (
    'The first oranges weren''t orange - the original oranges from Southeast Asia were actually green.',
    'Smithsonian Magazine',
    'https://www.smithsonianmag.com/science-nature/what-orange-before-orange-180982647/',
    'History',
    45,
    'active',
    'https://images.unsplash.com/photo-1611080626919-7cf5a9dbab5b?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'The surprising history of oranges reveals a fascinating story about how human cultivation has transformed the fruits we know today. The original oranges, native to Southeast Asia, were actually green - a fact that challenges our basic assumptions about this familiar fruit. These ancestral citrus fruits developed their now-characteristic orange color through centuries of selective breeding and cultivation.

The journey of oranges from their green origins to the bright orange fruit we know today parallels the development of global trade routes and agricultural practices. As these fruits traveled from Asia through the Middle East and into Europe, farmers selected and bred varieties that exhibited the most desirable characteristics, gradually transforming both their appearance and flavor.

The linguistic legacy of this fruit is equally fascinating. The word ''orange'' comes from the Sanskrit ''naranga'' through Persian and Arabic, eventually reaching European languages. Remarkably, the fruit gave its name to the color, not the other way around - making it one of the few colors in English named after an object. This etymology reveals how deeply intertwined our language is with the history of trade and agriculture, showing how the movement of foods across cultures can shape not just our diets, but our very language.'
    ))
  ),
  (
    'A teaspoonful of neutron star would weigh about 6 billion tons.',
    'NASA',
    'https://www.nasa.gov/feature/goddard/2019/nasa-s-nicer-delivers-best-ever-pulsar-measurements',
    'Space',
    40,
    'active',
    'https://images.unsplash.com/photo-1462331940025-496dfbfc7564?auto=format&fit=crop&q=80',
    jsonb_build_array(jsonb_build_object(
      'title', 'The Story',
      'content', 'Neutron stars represent some of the most extreme objects in the universe, and their incredible density challenges our everyday understanding of matter. These stellar remnants are formed when massive stars explode as supernovae, and their cores collapse under gravity''s overwhelming force. The result is an object so dense that a single teaspoon of its material would weigh as much as all of humanity''s buildings combined.

This extraordinary density comes from the way matter is compressed in a neutron star. Under the immense gravitational pressure, electrons are forced into atomic nuclei, combining with protons to form neutrons. The result is essentially a giant atomic nucleus about 20 kilometers in diameter, held together by gravity. The surface gravity of a neutron star is about 2 x 10¹¹ times stronger than Earth''s gravity - so strong that a marshmallow dropped on its surface would hit with the force of a thousand nuclear bombs.

The study of neutron stars has helped scientists understand fundamental physics in ways that would be impossible to replicate in laboratories on Earth. These cosmic objects serve as natural laboratories for testing theories about matter, gravity, and the fundamental forces of nature. Their existence pushes the boundaries of our understanding of physics and continues to provide new insights into the nature of matter and the universe itself.'
    ))
  );