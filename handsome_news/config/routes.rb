HandsomeNews::Application.routes.draw do
  root to: 'Post#index'
  resources :posts do
    resources :comments
    get :vote
  end

end
