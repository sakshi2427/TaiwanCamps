Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope '(:locale)', locale: /en|zh/ do
    root to: "pages#home"
    resources :campsites do
      resources :reviews, only: [:new]
    end
  end
end
