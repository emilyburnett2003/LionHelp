require 'rails_helper'

RSpec.describe ServicesController, type: :controller do
  let(:valid_attributes) {
    { title: "Laundry Help", description: "desc", price: 15.00, poster: "Emily" }
  }

  describe "POST #create" do
    it "creates a new service and redirects to show page" do
      post :create, params: { service: valid_attributes }
      expect(response).to redirect_to(Service.last)
      expect(flash[:notice]).to eq("Service created successfully!")
    end
  end

  describe "GET #show" do
    it "displays the service" do
      service = Service.create!(valid_attributes)
      get :show, params: { id: service.id }
      expect(response).to be_successful
      expect(assigns(:service)).to eq(service)
    end
  end

  describe "DELETE #destroy" do
    it "deletes the service" do
      service = Service.create!(valid_attributes)
      expect {
        delete :destroy, params: { id: service.id }
      }.to change(Service, :count).by(-1)
    end
  end
end
