class Api::V1::UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users, only: [:username, :email, :image, :description, :up_votes], include: [:listings, :offers]
    end

    def show
        user = User.find(params[:id])
        listings = user.listings
        render json: user, only: [:username, :email, :image, :description, :up_votes], include: [:listings, :offers]
    end

    def create
        byebug
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
            # figure out userserializer situation
        else
            render json: {error: "Failed to create the user"}
        end
    end

    def update
        user = User.find(params[:id])
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private

    def find_user
        user = User.find(params[:id])
    end

    def user_params
        params.permit(:username, :password, :email, :image, :description, :up_votes)
    end
end
