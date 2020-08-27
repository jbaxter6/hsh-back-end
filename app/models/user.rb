class User < ApplicationRecord
    has_secure_password
    
    has_many :offers
    has_many :listings, through: :offers
    has_many :listings

    
end
