require 'machinist/active_record'
require 'forgery'

Plant.blueprint do
  name { Forgery::Name.full_name }
  common_names { Forgery::Name.full_name }
  description { Forgery::LoremIpsum.text }
  comments_care { Forgery::LoremIpsum.text }
  colour { Forgery::Basic.color }
end

Plant.blueprint(:camelia) do
  name {'Camelia X vernalis'}
  common_names {'Camelia'}
  dimensions {'20x400'}
  colour {'Red'}
  description {'An early flowering camelia with bright red flowers with yellow stamens.'}
  comments_care {'Keep moist and mulch with compost. Sunny or partly shaded postition. Protect from strong winds. Well drained, slightly acidic soil.'}
end


Gardener.blueprint do
  email {Forgery(:email).address}
  password {Forgery(:basic).password}
end
