Rails.application.routes.draw do

  root to:"category#index"
  resources :category, only: %i(new index create edit update destroy) do
    resources :list, only: %i( create edit update destroy)
    get "/category/:category_id/list/:id" => "list#toggle"
  end

  # post `list/:id/toggle` => "list#toggle"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
