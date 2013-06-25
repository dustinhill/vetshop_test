require 'spec_helper'

describe "pets/new.html.erb" do
  before(:each) do
    assign(:pet, stub_model(Pet,
      :name => "MyString",
      :type => "MyString",
      :breed => "MyString",
      :age => 1,
      :weight => 1.5
    ).as_new_record)
  end

  it "renders new pet form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => pets_path, :method => "post" do
      assert_select "input#pet_name", :name => "pet[name]"
      assert_select "input#pet_type", :name => "pet[type]"
      assert_select "input#pet_breed", :name => "pet[breed]"
      assert_select "input#pet_age", :name => "pet[age]"
      assert_select "input#pet_weight", :name => "pet[weight]"
    end
  end
end
