class TipoContatosController < ApplicationController
  # GET /tipo_contatos
  # GET /tipo_contatos.xml
  def index
    @tipo_contatos = TipoContato.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_contatos }
    end
  end

  # GET /tipo_contatos/1
  # GET /tipo_contatos/1.xml
  def show
    @tipo_contato = TipoContato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_contato }
    end
  end

  # GET /tipo_contatos/new
  # GET /tipo_contatos/new.xml
  def new
    @tipo_contato = TipoContato.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_contato }
    end
  end

  # GET /tipo_contatos/1/edit
  def edit
    @tipo_contato = TipoContato.find(params[:id])
  end

  # POST /tipo_contatos
  # POST /tipo_contatos.xml
  def create
    @tipo_contato = TipoContato.new(params[:tipo_contato])

    respond_to do |format|
      if @tipo_contato.save
        format.html { redirect_to(@tipo_contato, :notice => 'Tipo contato was successfully created.') }
        format.xml  { render :xml => @tipo_contato, :status => :created, :location => @tipo_contato }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_contato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_contatos/1
  # PUT /tipo_contatos/1.xml
  def update
    @tipo_contato = TipoContato.find(params[:id])

    respond_to do |format|
      if @tipo_contato.update_attributes(params[:tipo_contato])
        format.html { redirect_to(@tipo_contato, :notice => 'Tipo contato was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_contato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_contatos/1
  # DELETE /tipo_contatos/1.xml
  def destroy
    @tipo_contato = TipoContato.find(params[:id])
    @tipo_contato.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_contatos_url) }
      format.xml  { head :ok }
    end
  end
end
