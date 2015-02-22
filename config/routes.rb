Rails.application.routes.draw do
  
root 'welcome#index'

resources :users
resources :manufacturers do
resources :products

end 



end
