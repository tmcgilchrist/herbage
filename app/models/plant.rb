# == Schema Information
#
# Table name: plants
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  common_names        :string(255)
#  origin              :string(255)
#  dimensions          :string(255)
#  cultural_conditions :string(255)
#  flowering_season    :string(255)
#  colour              :string(255)
#  growth_rate         :string(255)
#  foliage_colour      :string(255)
#  potential_use       :string(255)
#  potential_style     :string(255)
#  comments_care       :text
#  description         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Plant < ActiveRecord::Base

  validates :name, :uniqueness => {:message => 'already exists'}

  validates :name, :colour, :presence => {:message => 'is a required field'}

  validates :description, :comments_care, :presence => {:message => 'needs to be filled in'}
end
