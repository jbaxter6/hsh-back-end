class Api::V1::ListingsController < ApplicationController

    skip_before_action :logged_in?, only: [:index, :show]

    def index
        listings = Listing.all
        render :json => listings
    end

    def show
        listing = Listing.find(params[:id])
        render json: listing 
    end

    def create
        listing = Listing.new(listing_params)
        if listing.valid?
            listing.save
        else
            render json: {error: "Failed to create Listing"}
        end
    end

    def update
        listing = Listing.find(params[:id])
    end

    def destroy
        listing = Listing.find(params[:id])
        listing.destroy
    end

    private

    def find_listing
        listing = Listing.find(params[:id])
    end

    def listing_params
        params.permit(:user_id, :first_name, :last_name, :contact_number, :street_name, :city, :state, :zip_code, :rent, :monthly_price, :buy, :purchase_price, :sold, :condition, :type_of_house, :year_built, :sq_foot, :bedrooms,:half_bathrooms, :full_bathrooms, :description, :nearest_elementary, :nearest_middle, :nearest_high, :image, :image_2, :heating, :cooling, :parking, :garage, :hoa, :pet_friendly, :pet_size, :likes)
    end

end
