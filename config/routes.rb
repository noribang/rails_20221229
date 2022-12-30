Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET request to /cheese map to cheese#index
  get "cheese", to: "cheese#index"
  # GET request to /cheeses/:id to cheese#show
  get "cheeses/:id", to: "cheeses#show"
end
