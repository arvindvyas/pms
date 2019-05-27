Rails.application.routes.draw do
  root'projects#dashboard'
  get 'users/index'
  devise_for :users
  resources :projects do 
    resources :tasks
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
