Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  get 'admin/listings', to: 'listings#index'

  get 'listings', to: 'pages#listings'
  root to: "pages#landing"
end
