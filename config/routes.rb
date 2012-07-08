NflLines::Application.routes.draw do

  root :to => 'users#index'
  
  resources :users
  resources :weeks, :only => [:index, :edit] do
    member do 
      post 'submit_user_picks'
    end
  end
  resources :games
end
