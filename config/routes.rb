Rails.application.routes.draw do
  root 'brands#index'

  get '/models' => 'models#show'
end
