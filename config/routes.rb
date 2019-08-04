Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :cocktails

  resources :cocktails do
    resources :reviews, only: [ :new, :create ]
    resources :doses, only: [ :new, :create, :edit, :update, :delete ]
  end

  resources :ingredients
end
