Rails.application.routes.draw do
  get 'users/show'
  root to: 'homes#top'
  get 'top' => 'homes#top'
  get 'about' => 'homes#about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :index, :edit, :update]
end
