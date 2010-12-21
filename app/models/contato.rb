class Contato < ActiveRecord::Base
    validate :contato, :presence => true
    belongs_to :pessoa
    belongs_to :tipo_contato
end
