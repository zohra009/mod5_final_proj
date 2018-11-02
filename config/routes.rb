Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  resources :users
  resources :foods
  resources :user_foods

  # get '/users/:id', to: 'users#show'
  # get '/users', to: 'users#index'
  #
  # get '/foods/:id', to: 'foods#show'
  # get 'foods', to: 'foods#index'
  # put '/foods/:id', to: 'foods#update'
  # delete '/foods/:id', to: 'foods#destroy'
  namespace :api do
    namespace :v1 do
      get '/hello', to: 'foods#hello'
    end
  end

end
