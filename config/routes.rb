Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'books#index'

  # resources :books
  resources :users
  resources :tags, only: [:show]

  resources :books do
    member do
      put 'update_draft_status'
    end
  end

end
