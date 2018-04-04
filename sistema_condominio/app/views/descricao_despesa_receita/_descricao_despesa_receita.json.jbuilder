json.extract! descricao_despesa_receita, :id, :descricao, :natureza, :valor_fixo, :ativo, :data_inclusao, :data_alteracao, :created_at, :updated_at
json.url descricao_despesa_receita_url(descricao_despesa_receita, format: :json)
