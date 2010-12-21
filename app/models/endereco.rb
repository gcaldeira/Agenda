class Endereco < ActiveRecord::Base
  validate :logradouro, :presence => true
  validate :numero, :presence => true
  validate :bairro, :presence => true
  validate :cidade, :presence => true
  validate :estado, :presence => true
  validate :cep, :presence => true
  validate :lat, :presence => true
  validate :long, :presence => true
  belongs_to :pessoa
  
  def to_s
    logradouro<<", "<<numero<<", "<<complemento<<", "<<bairro<<", "<<", "<<cidade<<", "<<estado
  end
  
end

class Location
  attr_accessor :address, :lat, :lng
  def initialize(address, lat, lng)
    @address = address
    @lat = lat
    @lng = lng
  end
  def to_s; address.to_s; end
end