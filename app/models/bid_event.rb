class BidEvent < ApplicationRecord
  belongs_to :auctionable
  belongs_to :participant
  scope :closed, -> {where(final: true)}
end
