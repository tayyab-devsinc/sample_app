Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get '/401', to: 'erros#error_401'
  get '/402', to: 'erros#error_402'
  get '/404', to: 'erros#error_404'
  get '/500', to: 'erros#error_500'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
end