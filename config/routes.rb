Rails.application.routes.draw do
  resources :book_collections
  resources :bookcollections
  root 'book_collections#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
