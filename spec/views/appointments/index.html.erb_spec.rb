require 'spec_helper'

describe "appointments/index.html.erb" do
  before(:each) do
    assign(:appointments, [
      stub_model(Appointment,
        :requires_reminder => false,
        :reason_for_visit => "MyText"
      ),
      stub_model(Appointment,
        :requires_reminder => false,
        :reason_for_visit => "MyText"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
