class Api::V1::ListingsController < ApplicationController

    def index
        listings = Listing.all
        render :json => listings
    end

    def show
        listing = Listing.find(params[:id])
        render json: listing 
    end

    def create

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

    end

end
