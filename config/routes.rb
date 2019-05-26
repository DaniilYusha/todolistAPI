Rails.application.routes.draw do
  post 'sign_up', controller: :users, action: :create
  post 'sign_in', controller: :session, action: :create
  delete 'log_out', controller: :session, action: :destroy

  resources :projects do
    resources :tasks, shallow: true do
      resources :complete, only: :update
      resources :position, only: :update
      resources :comments
    end
  end
end
