require 'spec_helper'

describe Plant do

  it 'should save a valid plant model' do
    Plant.make!(:camelia)
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
    plant = Plant.make!(:camelia)

    dup_plant = Plant.make(:camelia)

    dup_plant.should_not be_valid
    dup_plant.errors[:name][0].should eql('already exists')
  end
end
