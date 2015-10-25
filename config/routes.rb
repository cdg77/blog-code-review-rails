Rails.application.routes.draw do
  devise_for :users
  root :to => 'posts#index'
  # devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :posts do
    resources :tags, :except => [:show, :index]
  end

end
