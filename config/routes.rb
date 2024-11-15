Rails.application.routes.draw do
  root to: 'pages#home'
  resources :planets, only: [:show] do
    resources :aliens, only: [:new, :create]
  end
  resources :aliens, only: [:destroy] do
    resources :holsters, only: [:new, :create]
  end
end


# As as user, I can give an alien a weapon
# holsters#new/create
# get 'aliens/:alien_id/holsters/new'
# post 'aliens/:alien_id/holsters'
