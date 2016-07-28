Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'events#index'
  get 'help' => 'static_pages#help', as: :help
  get 'about' => 'static_pages#about', as: :about
  post 'invitations/:id' => 'invitations#create', as: :invitations
  resources :users,    		only: [:new, :create, :show]
  resources :sessions, 		only: [:new, :create, :destroy]
  resources :events,   		only: [:new, :create, :show, :index]

end
