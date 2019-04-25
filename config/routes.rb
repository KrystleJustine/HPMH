Rails.application.routes.draw do

      # resources :admins
      # resources :leads
      # resources :projects
      # resources :tasks

      get '/tasks', to: 'task#index'
      get '/projects', to: 'project#index'
      get '/leads', to: 'lead#index'
      get '/admins', to: 'admin#index'
      get '/current_admin', to:'auth#show'
      get '/login', to: 'auth#create'
      get '/search', to: 'posts#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
