require 'spec_helper'

describe Plant do

  def valid_plant_attributes
    {
      :name => 'Camelia X vernalis',
      :common_names => 'Camelia',
      :dimensions => '20x400',
      :flowering_season => '',
      :colour => 'Red',
      :foliage_colour => 'Dark green',
      :potential_use => 'Screen',
      :potential_style => 'formal',
      :description => 'An early flowering camelia with bright red flowers with yellow stamens.',
      :comments_care => 'Keep moist and mulch with compost. Sunny or partly shaded postition. Protect from strong winds. Well drained, slightly acidic soil.'
    }
  end

  it 'should save a valid plant model' do
    Plant.create!(valid_plant_attributes)
  end


  it 'should ensure required fields are present' do
    plant = Plant.new

    plant.should_not be_valid
    plant.errors.size.should eql(4)
    plant.errors[:name][0].should eql('is a required field')
    plant.errors[:colour][0].should eql('is a required field')
    plant.errors[:description][0].should eql('needs to be filled in')
    plant.errors[:comments_care][0].should eql('needs to be filled in')
  end

  it 'should ensure unique names for plants' do
    plant = Plant.create!(valid_plant_attributes)

    dup_plant = Plant.new(valid_plant_attributes)

    dup_plant.should_not be_valid
    dup_plant.errors[:name][0].should eql('already exists')
  end
end
