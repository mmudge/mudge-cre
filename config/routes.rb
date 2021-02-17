Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/user' => "admin/listings#index", :as => :user_root
  devise_for :users

  namespace :admin do
    resources :listings
  end

  get 'listings', to: 'listings#index', as: 'listings'

  root to: "pages#landing"
end
