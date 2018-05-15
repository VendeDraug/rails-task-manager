Rails.application.routes.draw do
  # List
  get "tasks", to: "tasks#index"

  # Create
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Show
  get "tasks/:id", to: "tasks#show"

  # Update
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"

  # Destroy
  delete "tasks/:id", to: "tasks#destroy"
end
