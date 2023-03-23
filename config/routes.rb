Rails.application.routes.draw do
  post "user/signin", to: "usersessions#sing_in"
  post "user/signup", to: "usersessions#sign_up"

  get "all", to: "usersessions#all_user"

  put "user/profile/update", to: "profiles#update"
  get "user/my_profile", to: "profiles#my_profile"
  # resources :profiles
end
