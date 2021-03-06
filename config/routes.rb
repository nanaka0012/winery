Rails.application.routes.draw do
  resources :wines, :only => [ :new, :edit, :index, :show, :create]
  resources :purchases, :only => [ :index, :new, :edit, :show, :create ]
  # get 'mypage/index'
  resources :mypage, :only => [ :index ]
  root 'welcome#index' #これを追記 

    devise_scope :user do
    get "user/:id", :to => "mypage#index"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
end
