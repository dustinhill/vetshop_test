require 'spec_helper'

describe "customers/edit.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :new_record? => false,
      :name => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => customer_path(@customer), :method => "post" do
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_email", :name => "customer[email]"
      assert_select "input#customer_password", :name => "customer[password]"
    end
  end
end
