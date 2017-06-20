Rails.application.routes.draw do
  get 'pages/x'
  root 'pages#x'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "pages/new_user"
end
