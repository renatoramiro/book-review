Rails.application.routes.draw do
  namespace :api do
    get 'books/search'
    resources :books do
      resources :comments
    end

    resources :readers do
      resources :bookcases
    end
  end
end
