Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update, :create, :destroy]

  resources :contacts, only: [:show, :update, :create, :destroy] do
    resources :users, only: [:index]
  end

  resources :contact_shares, only: [:create, :destroy]
end
