Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:create, :show, :new]
  resource :session, only: [:create, :new, :destroy]

  resources :bands 
  
  resources :albums, except: [:index] do 
    resources :tracks, only: [:new]
  end 
  
  resources :albums, only: [:show, :create, :update, :edit, :destroy] do 
    resources :tracks, only: [:new]
  end
  
  resources :tracks, only: [:show, :create, :update, :edit, :destroy]
  resources :notes, only: [:create, :destroy]
  
  
end
