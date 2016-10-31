class CreateAuctionConfigurations < ActiveRecord::Migration[5.0]
  def change
    create_table :auction_configurations do |t|
      t.string :application_name
      t.integer :bid_increment_value

      t.timestamps
    end
  end
end
