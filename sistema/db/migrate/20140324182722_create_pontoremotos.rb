class CreatePontoremotos < ActiveRecord::Migration
  def change
    create_table :pontoremotos do |t|
      t.string :endereco

      t.timestamps
    end
  end
end
