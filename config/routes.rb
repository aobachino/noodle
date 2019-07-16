Rails.application.routes.draw do
  get 'menu/show'
  get 'store/search', :to => 'store#search'
  get 'store/detailSerch'

  devise_for :users
  root to: 'top_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
