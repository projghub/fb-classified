FbBgbng::Application.routes.draw do
  resources :classifieds

  match '/facebook/login' => 'facebook#login', :as => :facebook_login
  match '/regions/:id' => 'regions#index', :as => :region
  match '/regions/:region_id/categories/:id' => 'categories#index', :as => :category
  match '/account' => 'accounts#index', :as => :account
  match '/search' => 'searches#index', :as => :search

  root :to => 'pages#index'
end
