Rails.application.routes.draw do
  devise_for :users
  #devise_for :users

  root 'welcome#index' #これを追記 

  devise_scope :user do
    get "user/:id", :to => "welcome#index"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
