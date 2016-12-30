Rails.application.routes.draw do
 root 'topics#index'
 get 'about' => 'topics#about'
  resources :topics do
   member do
     post 'upvote'
     post 'dropvote'
   end
 end
end
