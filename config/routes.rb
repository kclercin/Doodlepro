Rails.application.routes.draw do
  resources :doodles
  root to: 'doodles#new'
end
