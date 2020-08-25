class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.references :user
      t.string :street_name
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :description
      t.string :pet_friendly
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
      t.string :smoker
      t.string :type_of_house
      # townhome, single-fam
      t.integer :sq_foot
      t.string :image
      t.string :image_2
      t.string :nearest_school
      t.integer :likes
      t.integer :year_built
      t.string :parking
      t.boolean :heating
      t.boolean :cooling
      t.string :hoa
      t.boolean :garage
      t.integer :condition
      # scale 1-10


      t.timestamps
    end
  end
end
