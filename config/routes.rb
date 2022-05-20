Rails.application.routes.draw do
   root to: "doctors#index"
  resources :appointments
  resources :patients do
    get :get_doctors
  end
  resources :doctors do
    get :get_patients
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
