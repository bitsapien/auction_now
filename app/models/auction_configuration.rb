class AuctionConfiguration < ApplicationRecord
	before_create :only_one_row

	private

    def only_one_row
      false if AuctionConfiguration.count > 0
    end
end
