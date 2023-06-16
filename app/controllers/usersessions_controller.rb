class UsersessionsController < ApplicationController
include JWTConcern

skip_before_action :must_log!, only: [:sign_up, :sign_in]

def all_user
    render json: Useraccount.select(:id, :first_name, :last_name, :email, :country, :city, :phone, :about, :linkedin, :facebook, :twitter, :website).where(admin: false), status: 200
end
    
def sign_up
    new_user = Useraccount.new user_prams
    if new_user.save
        payload = {user_id: new_user.id}
        token = encode(payload)
        render json: { message: 'User created', token: token }, status: :created
    else
        render json: {message: new_user.errors.full_messages}, status: 400
    end
end

def sing_in
    user = Useraccount.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
        payload = { user_id: user.id }
        token = encode payload
        render json: { message: "Signed in", token: token }, status: 200
    else
        render json: { message: "Email or password invalid!" }, status: 400
    end
end

private 

def user_prams
 params.permit(:email, :password, :first_name, :last_name)
end

end
