class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.integer :listing_id
      t.integer :offer_price
      t.integer :money_down
      t.boolean :loan_app
      t.string :first_name
      t.string :last_name
      t.string :phone_num
      t.string :email
      # whether they have applied for a loan or not

      t.timestamps
    end
  end
end
