class Auctionable < ApplicationRecord
	has_many :bid_events, dependent: :destroy
end
