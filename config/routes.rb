Rails.application.routes.draw do
  resources :planets, only: [:show] do
    resources :aliens, only: [:new, :create]
  end
  resources :aliens, only: [:destroy]
end



# As a user I can see one planet's aliens
#  planets#show
#  get '/planets/:id', to: 'planets#show', as: :planet
#
# As a user I can add an alien to a planet
# aliens#new / aliens#create
#  get 'planets/:planet_id/aliens/new'
#  post 'planets/:planet_id/aliens'
#
# As a user I can remove an alien
# aliens#destroy
#  delete 'aliens/:id'
