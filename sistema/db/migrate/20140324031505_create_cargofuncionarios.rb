class CreateCargofuncionarios < ActiveRecord::Migration
  def change
    create_table :cargofuncionarios do |t|
      t.string :cargofuncionario

      t.timestamps
    end
  end
end
