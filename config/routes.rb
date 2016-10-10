Rails.application.routes.draw do
  root 'users#new'
  resources :users
  resources :posts
  resources :comments
  resources :votes
  post 'sessions'   => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
  post 'votes/guest'      => 'votes#create_guest_vote'
end
