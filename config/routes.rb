Rails.application.routes.draw do
  root 'makes#index'

  get "/models" => "models#show"
end
