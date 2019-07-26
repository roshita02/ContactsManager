Rails.application.routes.draw do
  #get 'contacts/index'
 # resources :contacts
  #devise_for :users
  
  #	devise_scope :user do
  #		authenticated :user do
  #			root 'contacts#new', as: :authenticated_root
  #		end
  #		unauthenticated do
  #			root 'devise/sessions#new', as: :unauthenticated_root
  #		end
  #	end

  #get 'home/index'
  

  devise_for :users, controllers: { registrations: "registrations"}
 # resources :phones
  resources :contacts
  
  root 'contacts#index' 
end
