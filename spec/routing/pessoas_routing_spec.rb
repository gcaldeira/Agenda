require "spec_helper"

describe PessoasController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/pessoas" }.should route_to(:controller => "pessoas", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/pessoas/new" }.should route_to(:controller => "pessoas", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/pessoas/1" }.should route_to(:controller => "pessoas", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/pessoas/1/edit" }.should route_to(:controller => "pessoas", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/pessoas" }.should route_to(:controller => "pessoas", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/pessoas/1" }.should route_to(:controller => "pessoas", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/pessoas/1" }.should route_to(:controller => "pessoas", :action => "destroy", :id => "1")
    end

  end
end
