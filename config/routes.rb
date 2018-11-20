Rails.application.routes.draw do

  namespace :admin do
    root 'application#index'
    resources :users, only: [:index]
    resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  
  devise_for :users
	

	root 'events#index'
  resources :categories, only: [:show]
	resources :users, only: [:show]
	
  resources :events do
    resources :comments, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
