HandsomeNews::Application.routes.draw do
  root to: 'posts#index'
  resources :posts do
    resources :comments
    get :vote
  end

end
