class Plant < ActiveRecord::Base

  validates :name, :uniqueness => {:message => 'already exists'}

  validates :name, :species, :colour, :presence => {:message => 'is a required field'}

  validates :description, :care, :position, :soil, :presence => {:message => 'needs to be filled in'}
end
