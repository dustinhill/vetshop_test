require 'spec_helper'

describe "appointments/show.html.erb" do
  before(:each) do
    @appointment = assign(:appointment, stub_model(Appointment,
      :requires_reminder => false,
      :reason_for_visit => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
