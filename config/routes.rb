Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"

  resources :components, only: %i[index] do
    get "board", "colors", "fonts", "interface", "ships", on: :collection
  end
end
