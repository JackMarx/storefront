Rails.application.routes.draw do
  get 'orders/create'

  get 'orders/show'

  devise_for :users
  root 'products#index'
  get "/products" => 'products#index'
  get "/products/new" => 'products#new'
  post "/products" => 'products#create'

  get '/products/random' => 'products#random'
  get "/products/:id" => 'products#show'

  get "/products/:id/edit" => 'products#edit'
  delete "/products/:id" => 'products#destroy'
  patch "/products/:id" => 'products#update'

  post '/search' => 'products#search'

  get "/suppliers" => 'suppliers#index'
  get "/suppliers/new" => 'suppliers#new'
  post "/suppliers" => 'suppliers#create'
  get "/suppliers/:id" => 'suppliers#show'
  get "/suppliers/:id/edit" => 'suppliers#edit'
  patch "/suppliers/:id" => 'suppliers#update'
  delete "/suppliers/:id" => 'suppliers#destroy'

  post "/orders" => 'orders#create'
  get "/orders/:id" => 'orders#show'
end
