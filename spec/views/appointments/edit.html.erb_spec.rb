require 'spec_helper'

describe "appointments/edit.html.erb" do
  before(:each) do
    @appointment = assign(:appointment, stub_model(Appointment,
      :new_record? => false,
      :requires_reminder => false,
      :reason_for_visit => "MyText"
    ))
  end

  it "renders the edit appointment form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => appointment_path(@appointment), :method => "post" do
      assert_select "input#appointment_requires_reminder", :name => "appointment[requires_reminder]"
      assert_select "textarea#appointment_reason_for_visit", :name => "appointment[reason_for_visit]"
    end
  end
end
