# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Offer.destroy_all
Listing.destroy_all

20.times {
    User.create(
        username: Faker::Name.unique.name,
        email: Faker::Internet.unique.email,
        password: "cantlose",
        image: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg"),
        # https://randomuser.me/api/portraits/women/90.jpg
        description: "Looking for my home sweet home",
        up_votes: 0
        )
}



10.times {
    Listing.create(
        user: User.all.sample,
        street_name: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state,
        zip_code: Faker::Address.zip_code,
        description: "Beautiful Home Ready To Be Bought By A Beautiful Family",
        pet_friendly: Faker::Boolean.boolean,
        pet_size: "large",
        contact_number: Faker::PhoneNumber.cell_phone,
        rent: Faker::Boolean.boolean,
        monthly_price: rand(800..3000),
        buy: Faker::Boolean.boolean,
        purchase_price: rand(200000..500000),
        sold: Faker::Boolean.boolean,
        bedrooms: rand(1..6),
        half_bathrooms: rand(4),
        full_bathrooms: rand(1..5),
        smoker: Faker::Boolean.boolean,
        type_of_house: "Single-Family",
        sq_foot: rand(1000..15000),
        image: "https://www.bostonmagazine.com/wp-content/uploads/sites/2/2019/10/four-bedroom-front-porch.jpg",
        image_2: "https://cdn.boydforcongress.com/wp-content/uploads/house-week-lighthouse-inside_261806-840x450.jpg",
        nearest_elementary: Faker::FunnyName.three_word_name,
        nearest_middle: Faker::FunnyName.three_word_name,
        nearest_high: Faker::FunnyName.three_word_name,
        likes: 0,
        year_built: 2006,
        parking: Faker::Boolean.boolean,
        heating: Faker::Boolean.boolean,
        cooling: Faker::Boolean.boolean,
        hoa: Faker::Boolean.boolean,
        garage: Faker::Boolean.boolean,
        condition: "New"
    )
}

5.times {
    Offer.create(
        user: User.all.sample,
        listing: Listing.all.sample,
        offer_price: rand(200000..500000),
        money_down: rand(20000..120000),
        loan_app: Faker::Boolean.boolean
    )
}




