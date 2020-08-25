class Listing < ApplicationRecord
    has_many :offers
    has_many :users, through: :offers
    belongs_to :user

end
