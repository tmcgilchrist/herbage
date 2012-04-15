require 'spec_helper'

describe "plants/show" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :name => "Name",
      :common_names => "Common Names",
      :genus => "Genus",
      :description => "MyText",
      :care => "MyText",
      :soil => "MyText",
      :position => "MyText",
      :colour => "Colour"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Common Names/)
    rendered.should match(/Genus/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Colour/)
  end
end
