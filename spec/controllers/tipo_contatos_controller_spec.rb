require 'spec_helper'

describe TipoContatosController do

  def mock_tipo_contato(stubs={})
    (@mock_tipo_contato ||= mock_model(TipoContato).as_null_object).tap do |tipo_contato|
      tipo_contato.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all tipo_contatos as @tipo_contatos" do
      TipoContato.stub(:all) { [mock_tipo_contato] }
      get :index
      assigns(:tipo_contatos).should eq([mock_tipo_contato])
    end
  end

  describe "GET show" do
    it "assigns the requested tipo_contato as @tipo_contato" do
      TipoContato.stub(:find).with("37") { mock_tipo_contato }
      get :show, :id => "37"
      assigns(:tipo_contato).should be(mock_tipo_contato)
    end
  end

  describe "GET new" do
    it "assigns a new tipo_contato as @tipo_contato" do
      TipoContato.stub(:new) { mock_tipo_contato }
      get :new
      assigns(:tipo_contato).should be(mock_tipo_contato)
    end
  end

  describe "GET edit" do
    it "assigns the requested tipo_contato as @tipo_contato" do
      TipoContato.stub(:find).with("37") { mock_tipo_contato }
      get :edit, :id => "37"
      assigns(:tipo_contato).should be(mock_tipo_contato)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created tipo_contato as @tipo_contato" do
        TipoContato.stub(:new).with({'these' => 'params'}) { mock_tipo_contato(:save => true) }
        post :create, :tipo_contato => {'these' => 'params'}
        assigns(:tipo_contato).should be(mock_tipo_contato)
      end

      it "redirects to the created tipo_contato" do
        TipoContato.stub(:new) { mock_tipo_contato(:save => true) }
        post :create, :tipo_contato => {}
        response.should redirect_to(tipo_contato_url(mock_tipo_contato))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tipo_contato as @tipo_contato" do
        TipoContato.stub(:new).with({'these' => 'params'}) { mock_tipo_contato(:save => false) }
        post :create, :tipo_contato => {'these' => 'params'}
        assigns(:tipo_contato).should be(mock_tipo_contato)
      end

      it "re-renders the 'new' template" do
        TipoContato.stub(:new) { mock_tipo_contato(:save => false) }
        post :create, :tipo_contato => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested tipo_contato" do
        TipoContato.should_receive(:find).with("37") { mock_tipo_contato }
        mock_tipo_contato.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :tipo_contato => {'these' => 'params'}
      end

      it "assigns the requested tipo_contato as @tipo_contato" do
        TipoContato.stub(:find) { mock_tipo_contato(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:tipo_contato).should be(mock_tipo_contato)
      end

      it "redirects to the tipo_contato" do
        TipoContato.stub(:find) { mock_tipo_contato(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(tipo_contato_url(mock_tipo_contato))
      end
    end

    describe "with invalid params" do
      it "assigns the tipo_contato as @tipo_contato" do
        TipoContato.stub(:find) { mock_tipo_contato(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:tipo_contato).should be(mock_tipo_contato)
      end

      it "re-renders the 'edit' template" do
        TipoContato.stub(:find) { mock_tipo_contato(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested tipo_contato" do
      TipoContato.should_receive(:find).with("37") { mock_tipo_contato }
      mock_tipo_contato.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the tipo_contatos list" do
      TipoContato.stub(:find) { mock_tipo_contato }
      delete :destroy, :id => "1"
      response.should redirect_to(tipo_contatos_url)
    end
  end

end
