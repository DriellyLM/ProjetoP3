class CreateTelefonefuncionarios < ActiveRecord::Migration
  def change
    create_table :telefonefuncionarios do |t|
      t.string :numerotelefone
      t.references :funcionario, index: true

      t.timestamps
    end
  end
end
