Rails.application.routes.draw do
  root :to => 'posts#index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  resources :posts do
    resources :tags
  end

end
