Rails.application.routes.draw do
  Rails.application.routes.draw do 
    root 'products#index'
    resources :products, only: :show
    resource :cart, only: %i[show update] #for single resource, ex personal profile
    resources :orders, only: %i[new create show]
  end
end
