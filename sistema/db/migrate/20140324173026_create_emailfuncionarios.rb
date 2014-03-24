class CreateEmailfuncionarios < ActiveRecord::Migration
  def change
    create_table :emailfuncionarios do |t|
      t.string :email
      t.references :funcionario, index: true

      t.timestamps
    end
  end
end
