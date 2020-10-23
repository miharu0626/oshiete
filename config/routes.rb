Rails.application.routes.draw do
  devise_for :users, :controllers => {
    registrations: 'users/registrations',
    sessions: 'users/sessions'   
  }
  root to: 'recipes#index'
  resources :users, only: [:new, :create, :edit, :update]
  resources :recipes
  resources :questions

end

devise_scope :user do
  post 'users/guest_sign_in', to: 'users/sessions#new_guest'
end