Rails.application.routes.draw do
  namespace :api do
    resources :books do
      resources :comments
    end
  end
end
