class Pessoa < ActiveRecord::Base
    validate :nome, :presence => true
    has_many :enderecos
    has_many :contatos
end
