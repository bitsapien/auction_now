class CreateAuctionables < ActiveRecord::Migration[5.0]
  def change
    create_table :auctionables do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :base_price

      t.timestamps
    end
  end
end
