Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :create] do
      resources :new
    end
   end
end
