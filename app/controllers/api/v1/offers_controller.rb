class Api::V1::OffersController < ApplicationController
    # def index
    #     offers = Offer.all
    #     render :json => offers
    # end

    # def show
    #     offer = Offer.find(params[:id])
    #     render json: offer
    # end

    def create
        offer = Offer.new(offer_params)
        byebug
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
        params.permit(:user_id, :listing_id, :offer_price, :money_down, :loan_app)
    end

end
