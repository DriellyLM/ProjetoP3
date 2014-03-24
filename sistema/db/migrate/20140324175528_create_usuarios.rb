class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :senha
      t.string :ativo
      t.references :funcionario, index: true
      t.references :niveldeacesso, index: true

      t.timestamps
    end
  end
end
