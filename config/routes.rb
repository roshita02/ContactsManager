Rails.application.routes.draw do
  get 'contacts/index'
  devise_for :users
  	devise_scope :user do
  		authenticated :user do
  			root 'contacts#index', as: :authenticated_root
  		end
  		unauthenticated do
  			root 'devise/sessions#new', as: :unauthenticated_root
  		end
  	end
end
