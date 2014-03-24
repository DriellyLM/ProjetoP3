require "spec_helper"

describe EmailfuncionariosController do
  describe "routing" do

    it "routes to #index" do
      get("/emailfuncionarios").should route_to("emailfuncionarios#index")
    end

    it "routes to #new" do
      get("/emailfuncionarios/new").should route_to("emailfuncionarios#new")
    end

    it "routes to #show" do
      get("/emailfuncionarios/1").should route_to("emailfuncionarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/emailfuncionarios/1/edit").should route_to("emailfuncionarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/emailfuncionarios").should route_to("emailfuncionarios#create")
    end

    it "routes to #update" do
      put("/emailfuncionarios/1").should route_to("emailfuncionarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/emailfuncionarios/1").should route_to("emailfuncionarios#destroy", :id => "1")
    end

  end
end
