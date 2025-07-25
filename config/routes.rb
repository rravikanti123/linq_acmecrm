Rails.application.routes.draw do
  post '/contacts', to: 'contacts#create'
  get '/contacts', to: 'contacts#index'
end
