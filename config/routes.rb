Rails.application.routes.draw do

root "recipes#index"

match '/recipes',     to: 'recipes#create',          via: 'post'
    resources :recipes, only: [:index, :new, :create, :show, :destroy, :search]

get "new" => "recipes#new"
get "show" => "recipes#show"
end
