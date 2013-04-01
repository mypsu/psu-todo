require "spec_helper"

describe TaskdependentsController do
  describe "routing" do

    it "routes to #index" do
      get("/taskdependents").should route_to("taskdependents#index")
    end

    it "routes to #new" do
      get("/taskdependents/new").should route_to("taskdependents#new")
    end

    it "routes to #show" do
      get("/taskdependents/1").should route_to("taskdependents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/taskdependents/1/edit").should route_to("taskdependents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/taskdependents").should route_to("taskdependents#create")
    end

    it "routes to #update" do
      put("/taskdependents/1").should route_to("taskdependents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/taskdependents/1").should route_to("taskdependents#destroy", :id => "1")
    end

  end
end
