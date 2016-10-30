class BidEvent < ApplicationRecord
  belongs_to :auctionable
  belongs_to :participant
end
