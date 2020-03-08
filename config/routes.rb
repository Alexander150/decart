Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "currency#index", as: :root

  get '/currencies/:id', to: 'currency#currencies', as: :currencies

  get '/currencies', to: 'currency#currencies', as: :currencies
  get '/currencies/:currency_id', to: 'currency#currency', as: :currencies
end