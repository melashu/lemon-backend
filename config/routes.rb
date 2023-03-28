Rails.application.routes.draw do
  post 'user/signin', to: 'usersessions#sing_in'
  post 'user/signup', to: 'usersessions#sign_up'

  get 'all', to: 'usersessions#all_user'

  put 'user/profile/update', to: 'profiles#update'
  get 'user/my_profile', to: 'profiles#my_profile'
  
  put 'user/item/update/:id', to: 'items#update'
  post 'user/item/create', to: 'items#create'
  get 'user/item/show/:id', to: 'items#show'
  get 'user/item/index', to: 'items#index'
  delete 'user/item/delete/:id', to: 'items#destroy'

  get 'public/item', to: 'items#public_item'
  get 'buy/item', to: 'items#get_others_item'
  # resources :items
  # resources :profiles
end
