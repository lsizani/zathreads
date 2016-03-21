Rails.application.routes.draw do
  Rails.application.routes.default_url_options[:host] = 'localhost:3000'
  root :to => 'home#index'

  devise_for :users, controllers: { registrations: 'user/registrations' },
             path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :designers, :products

  resource :cart, only: [:show] do
    put 'add/:product_id', to: 'carts#add', as: :add_to
    put 'remove/:product_id', to: 'carts#remove', as: :remove_from
  end
end
