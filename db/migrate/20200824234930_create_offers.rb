class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.integer :listing_id
      t.integer :offer_price
      t.integer :money_down
      t.boolean :loan_app
      # whether they have applied for a loan or not

      t.timestamps
    end
  end
end
