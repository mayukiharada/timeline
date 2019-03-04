Rails.application.routes.draw do
  get 'hello/link' => 'hello#link'
  root to:"hello#index"
  devise_for :users
#  resources :tweets
#  resources :pages

  resources :pages do
    resources :tweets
  end

  devise_scope :user do
  get 'profile_edit', to: 'users/registrations#profile_edit', as: 'profile_edit'
  patch 'profile_update', to: 'users/registrations#profile_update', as: 'profile_update'
end
end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # #Tweetの投稿に関するページ
  # #投稿ページ表示
  #
  # get 'tweets/new' => 'tweets#new'
  # #投稿し、ホームにリダイレクト
  # post 'tweets/new' => 'tweets#create'
  # #投稿一覧
  # get 'tweets/index' => 'tweets#index'
