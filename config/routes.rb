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
      resources :reviews, only: [:new, :create] 
      get 'new', to: 'campsites#new', as: 'new_campsite' # INPUT_REQUIRED {This route allows users to access the campsite creation form} 
      post 'create', to: 'campsites#create', as: 'create_campsite' # Ensure to handle the form submission 
    end 
  end 
end