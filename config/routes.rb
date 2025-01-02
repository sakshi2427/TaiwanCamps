Rails.application.routes.draw do 
  get 'campsites/index' 
  get 'campsites/show' 
  devise_for :users 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html 
  # Defines the root path route ("/") 
  # root "articles#index" 
  scope '(:locale)', locale: /en|zh/ do 
    root to: 'pages#home' 
    resources :campsites do 
      collection do 
        get 'new_campsite', to: 'campsites#new' 
        post 'create_campsite', to: 'campsites#create' # Add this line for the create action 
      end 
      resources :reviews, only: [:new, :create] 
    end 
  end 
end