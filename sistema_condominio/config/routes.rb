Rails.application.routes.draw do
  resources :despesas
  resources :receita_recebidas
  resources :receita_a_recebers
  resources :descricao_despesa_receita
  resources :moradors
  resources :veiculos
  resources :funcionarios
  resources :apartamentos
  resources :usuarios
  resources :condominios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
