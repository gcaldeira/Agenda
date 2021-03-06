require 'spec_helper'

describe EnderecosController do

  def mock_endereco(stubs={})
    (@mock_endereco ||= mock_model(Endereco).as_null_object).tap do |endereco|
      endereco.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all enderecos as @enderecos" do
      Endereco.stub(:all) { [mock_endereco] }
      get :index
      assigns(:enderecos).should eq([mock_endereco])
    end
  end

  describe "GET show" do
    it "assigns the requested endereco as @endereco" do
      Endereco.stub(:find).with("37") { mock_endereco }
      get :show, :id => "37"
      assigns(:endereco).should be(mock_endereco)
    end
  end

  describe "GET new" do
    it "assigns a new endereco as @endereco" do
      Endereco.stub(:new) { mock_endereco }
      get :new
      assigns(:endereco).should be(mock_endereco)
    end
  end

  describe "GET edit" do
    it "assigns the requested endereco as @endereco" do
      Endereco.stub(:find).with("37") { mock_endereco }
      get :edit, :id => "37"
      assigns(:endereco).should be(mock_endereco)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created endereco as @endereco" do
        Endereco.stub(:new).with({'these' => 'params'}) { mock_endereco(:save => true) }
        post :create, :endereco => {'these' => 'params'}
        assigns(:endereco).should be(mock_endereco)
      end

      it "redirects to the created endereco" do
        Endereco.stub(:new) { mock_endereco(:save => true) }
        post :create, :endereco => {}
        response.should redirect_to(endereco_url(mock_endereco))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved endereco as @endereco" do
        Endereco.stub(:new).with({'these' => 'params'}) { mock_endereco(:save => false) }
        post :create, :endereco => {'these' => 'params'}
        assigns(:endereco).should be(mock_endereco)
      end

      it "re-renders the 'new' template" do
        Endereco.stub(:new) { mock_endereco(:save => false) }
        post :create, :endereco => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested endereco" do
        Endereco.should_receive(:find).with("37") { mock_endereco }
        mock_endereco.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :endereco => {'these' => 'params'}
      end

      it "assigns the requested endereco as @endereco" do
        Endereco.stub(:find) { mock_endereco(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:endereco).should be(mock_endereco)
      end

      it "redirects to the endereco" do
        Endereco.stub(:find) { mock_endereco(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(endereco_url(mock_endereco))
      end
    end

    describe "with invalid params" do
      it "assigns the endereco as @endereco" do
        Endereco.stub(:find) { mock_endereco(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:endereco).should be(mock_endereco)
      end

      it "re-renders the 'edit' template" do
        Endereco.stub(:find) { mock_endereco(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested endereco" do
      Endereco.should_receive(:find).with("37") { mock_endereco }
      mock_endereco.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the enderecos list" do
      Endereco.stub(:find) { mock_endereco }
      delete :destroy, :id => "1"
      response.should redirect_to(enderecos_url)
    end
  end

end
