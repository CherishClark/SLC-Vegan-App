Rails.application.routes.draw do
  resources :posts
  root to: "static#home"
end
