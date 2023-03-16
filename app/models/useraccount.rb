class Useraccount < ApplicationRecord
    has_many :items, dependent: :destroy
    has_many :orders, dependent: :destroy

    has_secure_password
end
