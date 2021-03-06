require 'spec_helper'

describe AppointmentsController do

  def mock_appointment(stubs={})
    @mock_appointment ||= mock_model(Appointment, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all appointments as @appointments" do
      Appointment.stub(:all) { [mock_appointment] }
      get :index
      assigns(:appointments).should eq([mock_appointment])
    end
  end

  describe "GET show" do
    it "assigns the requested appointment as @appointment" do
      Appointment.stub(:find).with("37") { mock_appointment }
      get :show, :id => "37"
      assigns(:appointment).should be(mock_appointment)
    end
  end

  describe "GET new" do
    it "assigns a new appointment as @appointment" do
      Appointment.stub(:new) { mock_appointment }
      get :new
      assigns(:appointment).should be(mock_appointment)
    end
  end

  describe "GET edit" do
    it "assigns the requested appointment as @appointment" do
      Appointment.stub(:find).with("37") { mock_appointment }
      get :edit, :id => "37"
      assigns(:appointment).should be(mock_appointment)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created appointment as @appointment" do
        Appointment.stub(:new).with({'these' => 'params'}) { mock_appointment(:save => true) }
        post :create, :appointment => {'these' => 'params'}
        assigns(:appointment).should be(mock_appointment)
      end

      it "redirects to the created appointment" do
        Appointment.stub(:new) { mock_appointment(:save => true) }
        post :create, :appointment => {}
        response.should redirect_to(appointment_url(mock_appointment))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved appointment as @appointment" do
        Appointment.stub(:new).with({'these' => 'params'}) { mock_appointment(:save => false) }
        post :create, :appointment => {'these' => 'params'}
        assigns(:appointment).should be(mock_appointment)
      end

      it "re-renders the 'new' template" do
        Appointment.stub(:new) { mock_appointment(:save => false) }
        post :create, :appointment => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested appointment" do
        Appointment.should_receive(:find).with("37") { mock_appointment }
        mock_appointment.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :appointment => {'these' => 'params'}
      end

      it "assigns the requested appointment as @appointment" do
        Appointment.stub(:find) { mock_appointment(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:appointment).should be(mock_appointment)
      end

      it "redirects to the appointment" do
        Appointment.stub(:find) { mock_appointment(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(appointment_url(mock_appointment))
      end
    end

    describe "with invalid params" do
      it "assigns the appointment as @appointment" do
        Appointment.stub(:find) { mock_appointment(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:appointment).should be(mock_appointment)
      end

      it "re-renders the 'edit' template" do
        Appointment.stub(:find) { mock_appointment(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested appointment" do
      Appointment.should_receive(:find).with("37") { mock_appointment }
      mock_appointment.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the appointments list" do
      Appointment.stub(:find) { mock_appointment }
      delete :destroy, :id => "1"
      response.should redirect_to(appointments_url)
    end
  end

end
