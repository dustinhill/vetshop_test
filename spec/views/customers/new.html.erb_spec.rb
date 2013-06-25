require 'spec_helper'

describe "customers/new.html.erb" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :name => "MyString",
      :email => "MyString",
      :password => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_email", :name => "customer[email]"
      assert_select "input#customer_password", :name => "customer[password]"
    end
  end
end
