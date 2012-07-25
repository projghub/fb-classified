FbBgbng::Application.routes.draw do  

  resources :classifieds, :profile

  match '/facebook/login' => 'facebook#login', :as => :facebook_login
  match '/regions/:id' => 'regions#index', :as => :region
  match '/regions/:region_id/categories/:id' => 'categories#index', :as => :category
  match '/account' => 'accounts#index', :as => :account
  match '/search' => 'searches#index', :as => :search
  match '/facebook_callback' => 'facebook#callback', :as => :facebook_callback
  match '/logout' => 'facebook#logout', :as => :destroy_user_session

  root :to => 'pages#index'
end
