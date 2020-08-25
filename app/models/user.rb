class User < ApplicationRecord
    has_many :offers
    has_many :listings
    has_many :listings, through :offers

    has_secure_password
end
