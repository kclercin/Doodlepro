Rails.application.routes.draw do
  resources :doodles do
    resources :members
  end
  root to: 'doodles#new'

end
