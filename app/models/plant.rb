class Plant < ActiveRecord::Base

  validates :name, :uniqueness => {:message => 'already exists'}

  validates :name, :colour, :presence => {:message => 'is a required field'}

  validates :description, :comments_care, :presence => {:message => 'needs to be filled in'}
end
