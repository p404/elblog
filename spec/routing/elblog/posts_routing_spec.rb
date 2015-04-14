require "rails_helper"

module Elblog
  RSpec.describe PostsController, type: :routing do
    routes { Elblog::Engine.routes }

    describe "routing" do
      it "routes to #index" do
        expect(get: "posts").to route_to("elblog/posts#index")
      end

      it "routes to #new" do
        expect(get: "/posts/new").to route_to("elblog/posts#new")
      end

      it "routes to #show" do
        expect(get: "/posts/1").to route_to("elblog/posts#show", id: "1")
      end

      it "routes to #edit" do
        expect(get: "/posts/1/edit").to route_to("elblog/posts#edit", id: "1")
      end

      it "routes to #create" do
        expect(post: "/posts").to route_to("elblog/posts#create")
      end

      it "routes to #update" do
        expect(put: "/posts/1").to route_to("elblog/posts#update", id: "1")
      end

      it "routes to #destroy" do
        expect(delete: "/posts/1").to route_to("elblog/posts#destroy", id: "1")
      end

    end
  end  
end