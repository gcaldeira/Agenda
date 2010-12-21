require 'spec_helper'

describe ContatosController do

  def mock_contato(stubs={})
    (@mock_contato ||= mock_model(Contato).as_null_object).tap do |contato|
      contato.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all contatos as @contatos" do
      Contato.stub(:all) { [mock_contato] }
      get :index
      assigns(:contatos).should eq([mock_contato])
    end
  end

  describe "GET show" do
    it "assigns the requested contato as @contato" do
      Contato.stub(:find).with("37") { mock_contato }
      get :show, :id => "37"
      assigns(:contato).should be(mock_contato)
    end
  end

  describe "GET new" do
    it "assigns a new contato as @contato" do
      Contato.stub(:new) { mock_contato }
      get :new
      assigns(:contato).should be(mock_contato)
    end
  end

  describe "GET edit" do
    it "assigns the requested contato as @contato" do
      Contato.stub(:find).with("37") { mock_contato }
      get :edit, :id => "37"
      assigns(:contato).should be(mock_contato)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created contato as @contato" do
        Contato.stub(:new).with({'these' => 'params'}) { mock_contato(:save => true) }
        post :create, :contato => {'these' => 'params'}
        assigns(:contato).should be(mock_contato)
      end

      it "redirects to the created contato" do
        Contato.stub(:new) { mock_contato(:save => true) }
        post :create, :contato => {}
        response.should redirect_to(contato_url(mock_contato))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contato as @contato" do
        Contato.stub(:new).with({'these' => 'params'}) { mock_contato(:save => false) }
        post :create, :contato => {'these' => 'params'}
        assigns(:contato).should be(mock_contato)
      end

      it "re-renders the 'new' template" do
        Contato.stub(:new) { mock_contato(:save => false) }
        post :create, :contato => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested contato" do
        Contato.should_receive(:find).with("37") { mock_contato }
        mock_contato.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :contato => {'these' => 'params'}
      end

      it "assigns the requested contato as @contato" do
        Contato.stub(:find) { mock_contato(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:contato).should be(mock_contato)
      end

      it "redirects to the contato" do
        Contato.stub(:find) { mock_contato(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(contato_url(mock_contato))
      end
    end

    describe "with invalid params" do
      it "assigns the contato as @contato" do
        Contato.stub(:find) { mock_contato(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:contato).should be(mock_contato)
      end

      it "re-renders the 'edit' template" do
        Contato.stub(:find) { mock_contato(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested contato" do
      Contato.should_receive(:find).with("37") { mock_contato }
      mock_contato.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the contatos list" do
      Contato.stub(:find) { mock_contato }
      delete :destroy, :id => "1"
      response.should redirect_to(contatos_url)
    end
  end

end
