class CreateNiveldeacessos < ActiveRecord::Migration
  def change
    create_table :niveldeacessos do |t|
      t.string :descricaonivel

      t.timestamps
    end
  end
end
