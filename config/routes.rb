Rails.application.routes.draw do

  namespace :admin do
    resources :stores
  end

  match '/stores/*path', :to => 'stores#show', :via => :get, :as => 'static'
  resources :stores
end
