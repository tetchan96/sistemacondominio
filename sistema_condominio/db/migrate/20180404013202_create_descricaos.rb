class CreateDescricaos < ActiveRecord::Migration[5.0]
  def change
    create_table :descricaos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
