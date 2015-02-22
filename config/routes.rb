Rails.application.routes.draw do
  
root 'welcome#index'

resources :users
resources :manufacturers do
resources :products

get 'login' => 'sessions#new'
get 'logout' => 'sessions#destroy'

get 'users/new'
get 'about/index'

match ':controller(/:action(/:id))', :via => [:get, :post]

end 
end 

