Rails.application.routes.draw do
  get '/vaccination_centers', to: "vaccination_centers#index"
  get '/patients', to: "patients#index"
  post '/patients', to: "patients#create"
  # get '/patients/:id', to: "patients#show"

  post '/appointments', to: "appointments#create"
  delete '/appointments/:id', to: "appointments#destroy"
end
