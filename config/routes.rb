Rails.application.routes.draw do
  # Add your routes here
  get '/logout' => 'sessions#destroy'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post] 
  root 'welcome#home'
end
