Rails.application.routes.draw do
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  root to:"pages#index"
devise_for :users
#  resources :tweets
#  resources :pages

  resources :pages do
    resources :tweets
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
