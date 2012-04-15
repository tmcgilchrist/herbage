require 'spec_helper'

describe "plants/index" do
  before(:each) do
    assign(:plants, [
      stub_model(Plant,
        :name => "Plant Name",
        :common_names => "Common Names",
        :species => "Species",
        :genus => "Genus",
        :description => "Pretty yellow plant",
        :care => "Water well",
        :soil => "Acidic well mulched",
        :position => "Sunny",
        :colour => "Yellow"
      ),
      stub_model(Plant,
        :name => "Plant Name",
        :common_names => "Common Names",
        :species => "Species",
        :genus => "Genus",
        :description => "Pretty yellow plant",
        :care => "Water well",
        :soil => "Acidic well mulched",
        :position => "Sunny",
        :colour => "Yellow"
      )
    ])
  end

  it "renders a list of plants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Plant Name".to_s, :count => 2
    assert_select "tr>td", :text => "Common Names".to_s, :count => 2
    assert_select "tr>td", :text => "Species".to_s, :count => 2
    assert_select "tr>td", :text => "Genus".to_s, :count => 2
    assert_select "tr>td", :text => "Pretty yellow plant".to_s, :count => 2
    assert_select "tr>td", :text => "Water well".to_s, :count => 2
    assert_select "tr>td", :text => "Acidic well mulched".to_s, :count => 2
    assert_select "tr>td", :text => "Sunny".to_s, :count => 2
    assert_select "tr>td", :text => "Yellow".to_s, :count => 2
  end
end
