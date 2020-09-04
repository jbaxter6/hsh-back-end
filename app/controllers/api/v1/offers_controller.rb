class Api::V1::OffersController < ApplicationController

    def create
        offer = Offer.new(offer_params)
        if offer.valid?
            offer.save
        else
            render json: {error: "Failed to create offer"}
        end
    end

    def update
    
    end

    def destroy
        offer = Offer.find(params[:id])
        offer.destroy
    end

    private

    def find_offer
        offer = Offer.find(params[:id])
    end

    def offer_params
        params.permit(:user_id, :listing_id, :offer_price, :money_down, :loan_app, :first_name, :last_name, :phone_num, :email)
    end

end
