Rails.application.routes.draw do
  # resources :projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  namespace :admin do
    resources :listings
  end
  # get 'admin/listings/:id', to: 'admin/listings#show', as: 'admin_listings_show'
  # get 'admin/listings', to: 'admin/listings#index', as: 'admin_listings'

  get 'listings', to: 'listings#index', as: 'listings'

  root to: "pages#landing"
end
