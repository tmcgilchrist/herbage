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
      assert_select "input#plant_genus", :name => "plant[genus]"
      assert_select "textarea#plant_description", :name => "plant[description]"
      assert_select "textarea#plant_care", :name => "plant[care]"
      assert_select "textarea#plant_soil", :name => "plant[soil]"
      assert_select "textarea#plant_position", :name => "plant[position]"
      assert_select "input#plant_colour", :name => "plant[colour]"
    end
  end
end
