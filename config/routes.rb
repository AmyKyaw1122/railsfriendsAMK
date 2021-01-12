Rails.application.routes.draw do
  devise_for :users
  resources :friends_dbs
 	#get 'home/index'
 	get 'home/about'

 	#root 'home/about'
  	#root to:'home#index'	 #no spaces
  	#root 'home#index' 		 #shortcut for the above and can route only GET request
  	root 'friends_dbs#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
