Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/users', to: 'users#index', as: 'banana'    #manually creating a single route
	# get '/users/:id', to: 'users#show', as: 'banana'   #':id' is a wildcard. Post specific pictures
	# post '/users', to: 'users#create'
	# patch '/users/:id', to:'users#update'
	# put '/users/:id', to: 'users#update'
	# delete '/users/:id', to: 'users#destroy'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # get '/users/edit', to: 'users#edit', as: 'edit_user'
  
# users get    /users(.:format)                 users#index
# post   /users(.:format)                       users#create
# new_user get    /users/new(.:format)          users#new
# edit_user get    /users/:id/edit(.:format)    users#edit
# user get    /users/:id(.:format)              users#show
# patch  /users/:id(.:format)                   users#update
# put    /users/:id(.:format)                   users#update
# delete /users/:id(.:format)                   users#destroy
  
  resources :users, only: [:index, :show, :update, :create, :destroy]
  resources :artwork


end
