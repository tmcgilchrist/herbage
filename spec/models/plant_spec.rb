require 'spec_helper'

describe Plant do

  def valid_plant_attributes
    {
      :name => 'Camelia X vernalis',
      :species => 'Camellia sasanqua',
      :colour => 'Red',
      :description => 'An early flowering camelia with bright red flowers with yellow stamens.',
      :care => 'Keep moist and mulch with compost.',
      :position => 'Sunny or partly shaded postition. Protect from strong winds.',
      :soil => 'Well drained, slightly acidic soil.'
    }
  end

  it 'should save a valid plant model' do

    Plant.create!(valid_plant_attributes)
  end


  it 'should ensure required fields are present' do
    plant = Plant.new

    plant.should_not be_valid
    plant.errors.size.should eql(7)
    plant.errors[:name][0].should eql('is a required field')
    plant.errors[:species][0].should eql('is a required field')
    plant.errors[:colour][0].should eql('is a required field')
    plant.errors[:description][0].should eql('needs to be filled in')
    plant.errors[:care][0].should eql('needs to be filled in')
    plant.errors[:position][0].should eql('needs to be filled in')
    plant.errors[:soil][0].should eql('needs to be filled in')
  end

  it 'should ensure unique names for plants' do
    plant = Plant.create!(valid_plant_attributes)

    dup_plant = Plant.new(valid_plant_attributes)

    dup_plant.should_not be_valid
    dup_plant.errors[:name][0].should eql('already exists')
  end
end
