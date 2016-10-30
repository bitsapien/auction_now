class CreateBidEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :bid_events do |t|
      t.references :auctionable, foreign_key: true
      t.references :participant, foreign_key: true
      t.integer :amount
      t.boolean :final

      t.timestamps
    end
  end
end
