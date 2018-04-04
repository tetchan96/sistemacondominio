class CreateDescricaoDespesaReceita < ActiveRecord::Migration[5.0]
  def change
    create_table :descricao_despesa_receita do |t|
      t.string :descricao
      t.string :natureza
      t.decimal :valor_fixo
      t.boolean :ativo
      t.datetime :data_inclusao
      t.datetime :data_alteracao

      t.timestamps
    end
  end
end
