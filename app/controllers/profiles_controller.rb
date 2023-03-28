class ProfilesController < ApplicationController

    def update
       @current_user.update!(user_prams)
       render json: { message: 'Successfuly updated' }, status: 200
       rescue ActiveRecord::RecordInvalid => e
       render json: { error: e.message }, status: 422
    end

    def my_profile
      render json: @current_user.as_json({except: [:created_at, :updated_at, :password_digest]}), status: 200
    end

    private

    def user_prams
        params.permit(:first_name, :password, :last_name, :country, :city, :phone, :about, :linkedin, :facebook, :twitter, :website)
    end

    # private 


end
