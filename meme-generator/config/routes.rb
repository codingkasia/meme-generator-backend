Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
     resources :comments, only: [:index, :create, :destroy, :update]
     resources :memes, only: [:index, :show, :create, :destroy, :update]
    #  root to: 'site#index'
    end 
  end 
end
