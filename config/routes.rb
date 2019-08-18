Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "articles#home"
  resources :articles
  get "/biographie", to: "articles#biographie"
  get "/", to: "articles#home"
  get "/contact", to: "articles#contact"
  post "/contact", to: "articles#answer"
end
