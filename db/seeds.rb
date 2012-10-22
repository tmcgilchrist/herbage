# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


## Plants
[
  {:name => 'Camelia X vernalis',
    :species => 'Camelia sasanqua',
    :common_names => 'Yuletide, Christmas Camellia',
    :colour => 'Red',
    :description => 'An evergreen shurb, closely related to C. Sasanqua, growing to approximately 3m with small, bright green foliage. Abundant flowers are produced in winter to spring. Ideal for screens, hedging, large containers and espaliers.',
    :comments_care => 'Keep moist especially in hot, dry weather. Mulch with compost, leaf mould or other organic matter to keep roots cool. Do not allow mulch to touch the trunk. May be lightly trimmed to shape in spring. Feed in spring with a specific camelia fertiliser or a complete organic  fetiliser. Avoid lime. Protect from strong winds. Well drained, slightly acidic soil. Before planting combine soil with organic matter for best results.',
    :soil => 'Well drained, slightly acidic soil.',
    :position => 'Sunny or partly shaded postition.'
  },
  {:name => 'Azalea kurume',
    :species => 'Rhododendron Azalea',
    :common_names => 'Kirin',
    :colour => 'Rose pink',
    :description => 'A small, bushy, evergreen shrub with silvery rose pink, hose in house flowers. Main flowering period is spring with spot flowering during autumn. Part shade. Prefers a moist well drained soil rich in organic matter with some protection from the sun. Avoid lime.',
    :comments_care => 'Prune after flowering to maintain compact growth. Avoid lime.',
    :soil => 'Well drained soil',
    :position => 'Part shade'
  },
  {:name => "Grevillia Lanigera 'Mount Tamboritha'",
    :species => 'Grevillia Lanigera',
    :common_names => 'Mt Tamboritha',
    :colour => 'Red and yellow flowers.',
    :description => 'An evergreen, spreading shrub with attractive narrow pointed green leaves crowded along the stem. This Australian native plant produces masses of red and yellow spider flowers over a lon period of time. Thrives in a sunny or semi-shaded position. Tolerates coastal conditions, extended wet and dry periods and light frost.',
    :comments_care => 'Low maintenance.',
    :soil => 'Well drained soil',
    :position => 'Full sun or semi shaded position.'
  },
  {:name => 'Cyathea cooperi',
    :species => 'Cyathea cooperi',
    :genus => 'Cyathea',
    :common_names => 'Coin Spotted Tree Fern, Australian tree fern, lacy tree fern, scaly tree fern, Cooper’s tree fern',
    :colour => 'Large green, lacy fronds.',
    :description => 'A fast growing tree fern with large, lacy fronds emergin froma slender trunk. Perfect for a shady garden or fernery. Grows best in a cool, moist, shady position but tolerates considerable exposure to sun of given adequate water. Keep moist at all times and remove spent fronds regularily. Apply organic fertiliser during spring.',
    :comments_care => 'Keep moist and apply organic fertiliser during spring.',
    :soil => 'Cool, moist, well mulched soil.',
    :position => 'Prefers shady position but will tolerate full sun.'
  },
  {:name => 'Musa Velutina',
    :species => 'Musa Velutina',
    :genus => 'Musa',
    :common_names => 'Pink Banana',
    :colour => 'Pink fruit and dark green leaves.',
    :description => 'Musa velutina, the Pink Banana, is a species of seeded banana. Fruits are 3 inches long, pink, and fuzzy. They are born on erect flower stalks with a pink inflorescence. Musa velutina flowers at a young age, doing so within a year. The fruits peal back when ripe. It is often grown as an ornamental, but has soft, sweet flesh that can be eaten. The seeds are quite hard and can chip a tooth.',
    :comments_care => 'Bananas like rich, well-drained soil with added organic material (compost and manures). They need a position in full sun with protection from frost and strong winds. Encourage plenty of leafy growth with good watering and mulching. Feed with a complete fertiliser during the growth periods (spring to autumn). Remove dead leaves to keep the plant tidy. Also, cut down stems that are dying back after fruiting. Propagate from ripe seed or by dividing the clump.',
    :soil => 'Rich well drained.',
    :position => 'Position in full sun with protection from frost and strong winds.'
  },
  {:name => 'Japanese Box',
    :species => 'Buxus Microphylla',
    :genus => 'Buxus',
    :common_names => 'Littleleaf Box',
    :colour => 'Dark green, glossy leaves.',
    :description => 'It is an evergreen shrub or small tree growing to 2–3 m tall. The leaves are bright green, 10–25 mm long, oval with a rounded or notched tip. Japanese Box is grown for its foliage and is used for formal or informal hedging, border planting and topiary work. It can also be mass planted as a filler, establishing in 3 to 5 years and may be a bonsai subject. It is important to keep moist during dry periods as the plant will suddenly drown off if allowed to dry out.',
    :comments_care => 'Keep well watered during dry periods. Fertilise well to keep green foliage.',
    :soil => 'Well drained.',
    :position => 'Full sun to part shade.'
  },
  {:name => 'Lily turf',
    :species => 'Liriope muscari',
    :genus => 'Liriope',
    :common_names => 'Evergreen Giant',
    :colour => 'Grass-like evergreen foliage and lilac-purple flowers',
    :description => 'It is a tufted, grass-like perennial which typically grows 12-18 inches (30 to 45 cm) tall and features clumps of strap-like, arching, glossy, dark green leaves (to 1/2 inch wide (1.3 cm)). [2] Clumps slowly expand by short stolons to a width of about 1 foot (30 cm), but plants do not spread aggressively. Roots are fibrous, often with terminal tubers. The small, showy flower occur on erect spikes with tiered whorls of dense, white to violet-purple flowers rising above the leaves in late summer. Flowers resemble those of grape hyacinth (Muscari), which is the origin of the species name. Flowers develop into blackish berries which often persist into winter. ',
    :comments_care => 'The species is easily grown in average, medium, well-drained soils in full sun to part shade. Ideal conditions are moist, fertile soils with partial shade. ',
    :soil => 'Well drained.',
    :position => 'Full sun to shade.'
  },
  {:name => 'Magnolia grandiflora',
    :species => 'Magnolia grandiflora',
    :genus => 'Magnolia',
    :common_names => 'Little gem',
    :colour => 'Large dark green leaves with rusty red beneath and large white fragrant flowers',
    :description => 'Magnolia grandiflora is a medium to large evergreen tree which may grow 27.5 m (90 ft) tall. It typically has a single stem (or trunk) and a pyramidal shape. The leaves are simple and broadly ovate, 12–20 cm (5–8 in) long and 6–12 cm (2–5 in) broad, with smooth margins. They are dark green, stiff and leathery, and often scurfy underneath with yellow-brown pubescence. The large, showy, lemon citronella-scented flowers are white, up to 30 cm (12 in) across and fragrant, with 6–12 petals with a waxy texture, emerging from the tips of twigs on mature trees in late spring. Flowering is followed by the rose-coloured fruit, ovoid and 7.5–10 cm (3–4 in) long and 3–5 cm (1.5–2 in) wide.',
    :comments_care => 'Benefits from summer watering. Remove spent flowers to encourage new growth and more flowers.',
    :soil => 'Moist well drained',
    :position => 'Full sun to part shade.'
  },
  {:name => 'Gardenia augusta',
    :species => 'Gardenia jasminoides',
    :genus => 'Gardenia',
    :common_names => 'common gardenia, cape jasmine, cape jessamine',
    :colour => 'shiny green leaves and fragrant white summer flowers',
    :description => 'Gardenia jasminoides is a shrub with greyish bark and dark green shiny leaves with prominent veins. The white flowers bloom in spring and summer and are highly fragrant. They are followed by small oval fruit.',
    :comments_care => 'Grows best in warm position in well drained, humus rich soil. A full sun or part shade position is best with protection from frost.',
    :soil => 'Well drained, humus rich',
    :position => 'Full sun to part shade.'
  }
].each {|p| Plant.create(p)}
