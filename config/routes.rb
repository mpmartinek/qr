Rails.application.routes.draw do
	root :to => 'home#index'
	get'home/index'
	get'tickets/resolved'
	get'tickets/send_response'

	resources :tickets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
