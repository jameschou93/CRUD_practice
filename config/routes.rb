Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "rapper#index"
  get '/rappers', to: "rapper#index"
  get '/rappers/new', to: "rapper#new"
  get '/rappers/:id', to: "rapper#show"
  post '/rappers', to: "rapper#create"
  get '/rappers/:id/edit', to: "rapper#edit"
  patch '/rappers/:id', to: "rapper#update"
  delete '/rappers/:id', to: "rapper#destroy"

end
