require 'rails_helper'

# frozen_string_literal: true

describe UsersessionsController, type: :request do
  context "When user successfully singup " do
    it "should return status code 201" do
        post '/user/signup', params: { email: 'meshu102@gmail.com', password: "12345678", first_name: 'Meshu', last_name: 'Amare' }
        expect(response).to have_http_status(201)
    end
  end
end
