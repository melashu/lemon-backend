class ApplicationController < ActionController::API
    include JWTConcern
    before_action :must_log!

    private

    def must_log!
        header = params['access_token'] || request.headers['Authorization']
        token = header.split(' ').last if header 
        if token
            id = decode(token)
            @current_user ||= Useraccount.find(id)
        else
        render json: {message: 'Invalid token'}, status: 401
        end
#   rescue JWT::DecodeError 
#     "Something went wrong"
    end

    
end
