class Useraccount < ApplicationRecord
    has_one :profile
    has_many :items, dependent: :destroy
    has_many :orders, dependent: :destroy

    has_secured_password
end
