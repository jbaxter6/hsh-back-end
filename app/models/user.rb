class User < ApplicationRecord
    has_secure_password
    
    has_many :offers
    has_many :listings
    has_many :listings, through: :offers

end
