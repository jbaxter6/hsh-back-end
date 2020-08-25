class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.references :user
      t.string :street_name
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :description
      t.boolean :pet_friendly
      t.string :pet_size
      t.string :contact_number
      t.boolean :rent
      t.integer :monthly_price
      t.boolean :buy
      t.integer :purchase_price
      t.boolean :sold
      t.integer :bedrooms
      t.integer :half_bathrooms
      t.integer :full_bathrooms
      t.boolean :smoker
      t.string :type_of_house
      # townhome, single-fam
      t.integer :sq_foot
      t.string :image
      t.string :image_2
      t.string :nearest_elementary
      t.string :nearest_middle
      t.string :nearest_high
      t.integer :likes
      t.integer :year_built
      t.boolean :parking
      t.boolean :heating
      t.boolean :cooling
      t.boolean :hoa
      t.boolean :garage
      t.string :condition
      
      
      t.timestamps
    end
  end
end
