Rails.application.routes.draw do

  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :currencies
  root to: "currency#index", as: :root

  get "/all", to: "currency#all", as: :all
  get "/show/:id", to: "currency#show", as: :show

  get '/currencies', to: 'currency#get_currencies', as: :get_currencies
  get '/currencies/:currency_id', to: 'currency#get_currency', as: :get_currency
end