require "spec_helper"

describe ContatosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/contatos" }.should route_to(:controller => "contatos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/contatos/new" }.should route_to(:controller => "contatos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/contatos/1" }.should route_to(:controller => "contatos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/contatos/1/edit" }.should route_to(:controller => "contatos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/contatos" }.should route_to(:controller => "contatos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/contatos/1" }.should route_to(:controller => "contatos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/contatos/1" }.should route_to(:controller => "contatos", :action => "destroy", :id => "1")
    end

  end
end
