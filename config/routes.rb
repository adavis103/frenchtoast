Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/services', to: 'welcome#services'
  get '/about_us', to: 'welcome#about_us'
  get '/schedule', to: 'welcome#schedule'
  get '/new_car', to: 'welcome#new_car'
  get '/my_profile', to: 'welcome#my_profile'
  post '/delete_car/:id', to: 'welcome#delete_car'
  get '/admin', to: 'welcome#admin'

  devise_scope :user do
    get '/sign_up', to: 'devise/registrations#new'
    get '/login', to: 'devise/sessions#new'
    get '/logout', to: 'devise/sessions#destroy'
    get '/account_settings', to: 'users/registrations#edit'
  end
  
  resources :cars
  resources :appointments
end
