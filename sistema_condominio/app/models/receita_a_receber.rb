class ReceitaAReceber < ApplicationRecord
  belongs_to :apartamento
  belongs_to :descricao_despesa_receita
  belongs_to :morador
  
  has_many :receita_recebida
end
