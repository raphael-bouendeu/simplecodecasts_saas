Rails.application.routes.draw do
  devise_for :users,controllers:{registrations: 'users/registrations'}
  root 'pages#home'
  get '/about' =>'pages#about'
  resources :contacts
  resources :users do
  resource :profile
end

end
