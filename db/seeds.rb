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



    headers = {
        "X-RapidAPI-Host" => "realtor.p.rapidapi.com",
        "X-RapidAPI-Key" => "8af688039emsheb6c972a252e585p18dce5jsn90daed24e039"
    }
    data = JSON.parse(RestClient.get("https://realtor.p.rapidapi.com/properties/list-for-sale?sort=relevance&city=Beverly+Hills&offset=0&limit=100&state_code=CA", headers))
    
    imageArray = data["listings"].map do | listing | 
        listing["photo"]
    end

    conditionArray = ["New", "Vintage", "Fixer-Upper"]

    styleArray = ["Single-Family", "Condominium", "Townhouse", "Apartment"]
    
    


50.times {
    User.create(
        username: Faker::Internet.username(specifier: 5..8),
        email: Faker::Internet.unique.email,
        password: "cantlose",
        image: 'https://images.unsplash.com/photo-1562087926-662f8573327b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80',
        description: "Looking for my home sweet home",
        up_votes: 0
        )
}

Listing.create(
        user: User.all.sample,
        street_name: "8230 Stonewall Dr",
        city: "Vienna",
        state: "Virginia",
        zip_code: 22180,
        
        description: "The house was welcoming from the open door to the wide hallway. Upon the walls were the photographs of children, so obviously so loved. 
        The floor was an old-fashioned parquet with a blend of deep homely browns and the walls were the greens of summer gardens meeting a bold white baseboard. 
        The banister was a twirl of a branch, tamed by the carpenter's hand, it's grain flowing as water might, in waves of comforting woodland hues. 
        Under the lamp-shine it was nature's art, something that soothed right to the soul.",

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
        type_of_house: styleArray.sample,
        sq_foot: rand(1000..15000),
        image: imageArray.sample,
        image_2: imageArray.sample,
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
        condition: conditionArray.sample
)

Listing.create(
        user: User.all.sample,
        street_name: "191 Crosby Street",
        city: "Madison",
        state: "Florida",
        zip_code: 32340,
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
        type_of_house: styleArray.sample,
        sq_foot: rand(1000..15000),
        image: imageArray.sample,
        image_2: imageArray.sample,
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
        condition: conditionArray.sample
)

Listing.create(
        user: User.all.sample,
        street_name: "300 Salmon Street",
        city: "Stockdale",
        state: "Texas",
        zip_code: 78160,

        description: "The house was welcoming from the open door to the wide hallway. 
        Upon the walls were the photographs of children, so obviously so loved. The floor was an old-fashioned parquet with a blend of deep 
        homely browns and the walls were the greens of summer gardens meeting a bold white baseboard. The banister was a twirl of a branch, tamed by the carpenter's hand, 
        it's grain flowing as water might, in waves of comforting woodland hues. Under the lamp-shine it was nature's art, something that soothed right to the soul.",

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
        type_of_house: styleArray.sample,
        sq_foot: rand(1000..15000),
        image: imageArray.sample,
        image_2: imageArray.sample,
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
        condition: conditionArray.sample
)



100.times {
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
        type_of_house: styleArray.sample,
        sq_foot: rand(1000..15000),
        image: imageArray.sample,
        image_2: imageArray.sample,
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
        condition: conditionArray.sample
    )
}

5.times {
    Offer.create(
        user: User.all.sample,
        listing: Listing.all.sample,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        phone_num: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.email,
        offer_price: rand(200000..500000),
        money_down: rand(20000..120000),
        loan_app: Faker::Boolean.boolean
    )
}




