Rails.application.routes.draw do
	resources :posts do
		resources :comments
	end
	post '/posts/:id' => 'posts#create'
	get '/posts' => 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
