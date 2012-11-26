require 'machinist/active_record'
require 'forgery'

Plant.blueprint do
  name { Forgery::Name.full_name }
  common_names { Forgery::Name.full_name }
  description { Forgery::LoremIpsum.text }
  comments_care { Forgery::LoremIpsum.text }
  colour { Forgery::Basic.color }
end
