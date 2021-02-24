Rails.application.routes.draw do
  get '/vaccination_centers', to: "vaccination_centers#index"
  get '/patients', to: "patients#index"
  # get '/patients/:id', to: "patients#show"
end
