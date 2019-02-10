Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'books#index'

  resources :books do
    member do
      put 'update_draft_status'
    end
  end
  resources :users
  resources :tags, only: [:show]

end
