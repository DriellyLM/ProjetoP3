require "spec_helper"

describe OrdemdeservicosController do
  describe "routing" do

    it "routes to #index" do
      get("/ordemdeservicos").should route_to("ordemdeservicos#index")
    end

    it "routes to #new" do
      get("/ordemdeservicos/new").should route_to("ordemdeservicos#new")
    end

    it "routes to #show" do
      get("/ordemdeservicos/1").should route_to("ordemdeservicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ordemdeservicos/1/edit").should route_to("ordemdeservicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ordemdeservicos").should route_to("ordemdeservicos#create")
    end

    it "routes to #update" do
      put("/ordemdeservicos/1").should route_to("ordemdeservicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ordemdeservicos/1").should route_to("ordemdeservicos#destroy", :id => "1")
    end

  end
end
