class ProfilesController < ApplicationController

    def update
        # begin
        #     @current_user.update!(user_prams) 
        #     render json: { message: "Successfuly updated!" }, status: 200
        # raise e
        #     render json: user_prams.values , status: 403
        # end
    #   if @current_user.update_columns(user_prams.keys, user_prams.values) 
    #      render json: { message: "Successfuly updated!" }, status: 200
    #   else
    #      render json: user_prams.values , status: 403
    #   end
    end

    def my_profile
      render json: @current_user.as_json({except: [:created_at, :updated_at, :password_digest]}), status: 200
    end

    private

    def user_prams
        params.permit(:first_name, :last_name, :country, :city, :phone, :about, :linkedin, :facebook, :twitter, :website)
    end
end
