Rails.application.routes.draw do
  resources :list, only: %i(new create edit update destroy)
  resources :category, only: %i(new index create edit update destroy)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
