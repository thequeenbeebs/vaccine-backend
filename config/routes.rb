Rails.application.routes.draw do
  get '/vaccination_centers', to: "vaccination_centers#index"
  get '/patients', to: "patients#index"
  post '/patients', to: "patients#create"
  # get '/patients/:id', to: "patients#show"

  post '/appointments', to: "appointments#create"
  patch '/appointments/:id', to: "appointments#update"
  delete '/appointments/:id', to: "appointments#destroy"

  post '/login', to: "auth#create"
  get '/decode_token', to: "patients#profile"
end
