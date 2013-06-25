require 'spec_helper'

describe "appointments/new.html.erb" do
  before(:each) do
    assign(:appointment, stub_model(Appointment,
      :requires_reminder => false,
      :reason_for_visit => "MyText"
    ).as_new_record)
  end

  it "renders new appointment form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => appointments_path, :method => "post" do
      assert_select "input#appointment_requires_reminder", :name => "appointment[requires_reminder]"
      assert_select "textarea#appointment_reason_for_visit", :name => "appointment[reason_for_visit]"
    end
  end
end
