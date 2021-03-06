Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  # get '/404', to: 'erros#error_404'
  # get '/500', to: 'erros#error_500'

  get '*unmatched_route', to: 'erros#error_404'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
end