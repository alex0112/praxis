require "rails_helper"

RSpec.describe HabitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/habits").to route_to("habits#index")
    end


    it "routes to #show" do
      expect(:get => "/habits/1").to route_to("habits#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/habits").to route_to("habits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/habits/1").to route_to("habits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/habits/1").to route_to("habits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/habits/1").to route_to("habits#destroy", :id => "1")
    end

  end
end
