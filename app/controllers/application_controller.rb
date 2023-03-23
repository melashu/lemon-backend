class ApplicationController < ActionController::API
    include JWTConcern
    before_action :must_log!

    private

    def must_log!
        token = params['access_token'] || request.headers['Authorization']
        if token
        id = decode(token)
        @current_user ||= Useraccount.find(id)
        else
        render json: {message: 'Invalid token'}, status: 402
        end
    end

    
end
