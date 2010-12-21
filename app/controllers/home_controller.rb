class HomeController < ApplicationController
  require 'brcep'
  
  def index
  end

  def busca_por_cep
    render :json => BuscaEndereco.por_cep(params[:cep]) 
    rescue RuntimeError  
      render :json => ["", "cep nao encontrado", "", "", ""].to_json
  end
end
