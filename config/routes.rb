Rails.application.routes.draw do
  resources :mail_contents
  resources :messages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
