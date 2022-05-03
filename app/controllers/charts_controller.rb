class ChartsController < ApplicationController
    def new_users
       
        render json: User.group(:created_at).count
    end
end