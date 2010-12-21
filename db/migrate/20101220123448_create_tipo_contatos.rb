class CreateTipoContatos < ActiveRecord::Migration
  def self.up
    create_table :tipo_contatos do |t|
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_contatos
  end
end
