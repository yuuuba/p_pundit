Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get "users/:id", to: "users#show", as: :user
  get "mypage/:id/edit", to: "mypages#edit", as: :mypage
  resources :communities
end
