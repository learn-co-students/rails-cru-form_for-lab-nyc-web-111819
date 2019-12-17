Rails.application.routes.draw do
  resources :songs, except: :delete
  resources :genres, except: [:index, :delete]
  resources :artists, except: [:index, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
