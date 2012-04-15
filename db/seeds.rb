# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


## Plants

plants = [
 {:name => 'Camelia X vernalis',
   :species => 'Camellia sasanqua',
   :genus => 'Camelia',
   :common_names => 'Yuletide, Christmas Camellia',
   :colour => 'Red',
   :description => 'An evergreen shurb, closely related to C. Sasanqua, growing to approximately 3m with small, bright green foliage. Abundant flowers are produced in winter to spring. Ideal for screens, hedging, large containers and espaliers.',
   :care => 'Keep moist especially in hot, dry weather. Mulch with compost, leaf mould or other organic matter to keep roots cool. Do not allow mulch to touch the trunk. May be lightly trimmed to shape in spring. Feed in spring with a specific camelia fertiliser or a complete organic  fetiliser. Avoid lime.',
   :position => 'Sunny or partly shaded postition. Protect from strong winds.',
   :soil => 'Well drained, slightly acidic soil. Before planting combine soil with organic matter for best results.'},
 {:name => 'Azalea kurume',
   :species => 'Azalea',
   :genus => 'Rhododendron',
   :common_names => 'Kirin',
   :colour => 'Rose pink',
   :description => 'A small, bushy, evergreen shrub with silvery rose pink, hose in house flowers. Main flowering period is spring with spot flowering during autumn',
   :care => 'Prune after flowering to maintain compact growth.',
   :position => 'Part shade.',
   :soil => 'Prefers a moist well drained soil rich in organic matter with some protection from the sun. Avoid lime.'
 },
  {:name => "Grevillia Lanigera 'Mount Tamboritha'",
   :species => 'Grevillia Lanigera',
   :genus => 'Grevillea',
   :common_names => 'Mt Tamboritha',
   :colour => 'Red and yellow flowers.',
   :description => 'An evergreen, spreading shrub with attractive narrow pointed green leaves crowded along the stem. This Australian native plant produces masses of red and yellow spider flowers over a lon period of time. Thrives in a sunny or semi-shaded position. Tolerates coastal conditions, extended wet and dry periods and light frost.',
   :care => 'Low maintenance.',
   :position => 'Full sun or semi shaded position.',
   :soil => 'Well drained soil'
 },
  {:name => 'Cyathea cooperi',
   :species => 'Cyathea cooperi',
   :genus => 'Cyathea',
   :common_names => 'Coin Spotted Tree Fern, Australian tree fern, lacy tree fern, scaly tree fern, Cooper’s tree fern',
   :colour => 'Large green, lacy fronds.',
   :description => 'A fast growing tree fern with large, lacy fronds emergin froma slender trunk. Perfect for a shady garden or fernery. Grows best in a cool, moist, shady position but tolerates considerable exposure to sun of given adequate water. Keep moist at all times and remove spent fronds regularily. Apply organic fertiliser during spring.',
   :care => 'Keep moist and apply organic fertiliser during spring.',
   :position => 'Prefers shady position but will tolerate full sun.',
   :soil => 'Cool, moist, well mulched soil.'
 }
]

plants.each {|p| Plant.create(p)}
