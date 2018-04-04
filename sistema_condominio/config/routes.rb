Rails.application.routes.draw do
  devise_for :users
  get 'sessions/new'

  get 'users/new'
      root 'sessions#new'

  resources :descricaos
  resources :descricao_despesa_receita
  resources :moradors
  resources :despesas
  resources :receita_recebidas
  resources :receita_a_recebers
  resources :veiculos
  resources :funcionarios
  resources :apartamentos
  resources :usuarios
  resources :users
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  
  resources :condominios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
