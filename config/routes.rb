Rails.application.routes.draw do
  resources :friends, only: [:index, :create, :show] do
    resources :hangouts, only: [:index, :create]
  end
end
