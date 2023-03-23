require 'jwt'
module JWTConcern
    extend ActiveSupport::Concern

    def encode(payload)
      JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
    end

    def decode (token)
       JWT.decode(token, Rails.application.secrets.secret_key_base, true, {algorithm: 'HS256'})[0]['user_id']
    end
end