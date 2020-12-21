require "rails_helper"

RSpec.describe PublicTalkOutlinesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/public_talk_outlines").to route_to("public_talk_outlines#index")
    end

    it "routes to #new" do
      expect(get: "/public_talk_outlines/new").to route_to("public_talk_outlines#new")
    end

    it "routes to #show" do
      expect(get: "/public_talk_outlines/1").to route_to("public_talk_outlines#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/public_talk_outlines/1/edit").to route_to("public_talk_outlines#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/public_talk_outlines").to route_to("public_talk_outlines#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/public_talk_outlines/1").to route_to("public_talk_outlines#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/public_talk_outlines/1").to route_to("public_talk_outlines#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/public_talk_outlines/1").to route_to("public_talk_outlines#destroy", id: "1")
    end
  end
end
