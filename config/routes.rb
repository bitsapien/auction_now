Rails.application.routes.draw do
  resources :bid_events
  resources :participants do
  	collection do
  		get 'bulk_new'
  		post 'bulk_upload'
  	end
  end
  resources :auctionables do 
  	collection do
  		get 'bulk_new'
  		post 'bulk_upload'
  	end
  end
  get 'admin', to: 'auctionables#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
