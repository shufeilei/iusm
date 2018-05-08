Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :boards do
    resources :cells
  end

  mount Commontator::Engine => '/commontator'

  root "pages#show", page: "home"

end
