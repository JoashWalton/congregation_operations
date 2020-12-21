 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/kingdom_halls", type: :request do
  # KingdomHall. As you add validations to KingdomHall, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      KingdomHall.create! valid_attributes
      get kingdom_halls_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      kingdom_hall = KingdomHall.create! valid_attributes
      get kingdom_hall_url(kingdom_hall)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_kingdom_hall_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      kingdom_hall = KingdomHall.create! valid_attributes
      get edit_kingdom_hall_url(kingdom_hall)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new KingdomHall" do
        expect {
          post kingdom_halls_url, params: { kingdom_hall: valid_attributes }
        }.to change(KingdomHall, :count).by(1)
      end

      it "redirects to the created kingdom_hall" do
        post kingdom_halls_url, params: { kingdom_hall: valid_attributes }
        expect(response).to redirect_to(kingdom_hall_url(KingdomHall.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new KingdomHall" do
        expect {
          post kingdom_halls_url, params: { kingdom_hall: invalid_attributes }
        }.to change(KingdomHall, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post kingdom_halls_url, params: { kingdom_hall: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested kingdom_hall" do
        kingdom_hall = KingdomHall.create! valid_attributes
        patch kingdom_hall_url(kingdom_hall), params: { kingdom_hall: new_attributes }
        kingdom_hall.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the kingdom_hall" do
        kingdom_hall = KingdomHall.create! valid_attributes
        patch kingdom_hall_url(kingdom_hall), params: { kingdom_hall: new_attributes }
        kingdom_hall.reload
        expect(response).to redirect_to(kingdom_hall_url(kingdom_hall))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        kingdom_hall = KingdomHall.create! valid_attributes
        patch kingdom_hall_url(kingdom_hall), params: { kingdom_hall: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested kingdom_hall" do
      kingdom_hall = KingdomHall.create! valid_attributes
      expect {
        delete kingdom_hall_url(kingdom_hall)
      }.to change(KingdomHall, :count).by(-1)
    end

    it "redirects to the kingdom_halls list" do
      kingdom_hall = KingdomHall.create! valid_attributes
      delete kingdom_hall_url(kingdom_hall)
      expect(response).to redirect_to(kingdom_halls_url)
    end
  end
end
