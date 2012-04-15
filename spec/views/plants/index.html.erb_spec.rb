require 'spec_helper'

describe "plants/index" do
  before(:each) do
    assign(:plants, [
      stub_model(Plant,
        :name => "Name",
        :common_names => "Common Names",
        :genus => "Genus",
        :description => "MyText",
        :care => "MyText",
        :soil => "MyText",
        :position => "MyText",
        :colour => "Colour"
      ),
      stub_model(Plant,
        :name => "Name",
        :common_names => "Common Names",
        :genus => "Genus",
        :description => "MyText",
        :care => "MyText",
        :soil => "MyText",
        :position => "MyText",
        :colour => "Colour"
      )
    ])
  end

  it "renders a list of plants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Common Names".to_s, :count => 2
    assert_select "tr>td", :text => "Genus".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Colour".to_s, :count => 2
  end
end
