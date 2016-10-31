Rails.application.routes.draw do
  resources :bid_events do
    collection do 
      get 'reports'
    end
  end
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
    member do 
      get 'close_bidding'
    end
  end
  resources :auction_configurations, except: [:show,:edit,:destroy,:new,:index,:create]
  get 'configurations', to: 'auction_configurations#index'
  get 'admin', to: 'auctionables#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
