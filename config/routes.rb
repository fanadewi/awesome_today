Rails.application.routes.draw do
  root 'pages#index'
  get '/events', to: 'events#index'
  get '/births', to: 'births#index'
  get '/deaths', to: 'deaths#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
