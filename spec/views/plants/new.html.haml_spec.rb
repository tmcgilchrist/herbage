require 'spec_helper'

describe "plants/new" do
  before(:each) do
    assign(:plant, stub_model(Plant,
      :name => "MyString",
      :common_names => "MyString",
      :genus => "MyString",
      :description => "MyText",
      :care => "MyText",
      :soil => "MyText",
      :position => "MyText",
      :colour => "MyString"
    ).as_new_record)
  end

  it "renders new plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plants_path, :method => "post" do
      assert_select "input#plant_name", :name => "plant[name]"
      assert_select "input#plant_common_names", :name => "plant[common_names]"
      assert_select "input#plant_dimensions", :name => "plant[dimensions]"
      assert_select "input#plant_flowering_season", :name => "plant[flowering_season]"
      assert_select "input#plant_colour", :name => "plant[colour]"
      assert_select "input#plant_foliage_colour", :name => "plant[foliage_colour]"
      assert_select "input#plant_potential_use", :name => "plant[potential_use]"
      assert_select "input#plant_potential_style", :name => "plant[potential_style]"
      assert_select "textarea#plant_comments_care", :name => "plant[comments_care]"
      assert_select "textarea#plant_description", :name => "plant[description]"
    end
  end
end
