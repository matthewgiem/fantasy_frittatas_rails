Rails.application.routes.draw do
  resources :users do
    resources :comments
  end

end
