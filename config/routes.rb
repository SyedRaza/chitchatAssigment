Rails.application.routes.draw do
  root "links#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :links

  get "/:token", to: "tokens#token"
  get "/:token/info", to: "tokens#info"


end
