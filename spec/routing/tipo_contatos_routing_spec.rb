require "spec_helper"

describe TipoContatosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/tipo_contatos" }.should route_to(:controller => "tipo_contatos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/tipo_contatos/new" }.should route_to(:controller => "tipo_contatos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/tipo_contatos/1" }.should route_to(:controller => "tipo_contatos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/tipo_contatos/1/edit" }.should route_to(:controller => "tipo_contatos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/tipo_contatos" }.should route_to(:controller => "tipo_contatos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/tipo_contatos/1" }.should route_to(:controller => "tipo_contatos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/tipo_contatos/1" }.should route_to(:controller => "tipo_contatos", :action => "destroy", :id => "1")
    end

  end
end
