Rails.application.routes.draw do
  


  resources :complaints

  resources :enterprises do
  	resources :complaints, only: [:create, :destroy]
  end

 

 
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  root 'enterprises#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
