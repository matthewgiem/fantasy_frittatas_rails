Rails.application.routes.draw do
  resources :users do
    resources :comments
  end
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "home"
end
