class Item < ApplicationRecord
  belongs_to :useraccount
  has_many :orders, dependent: :destroy
end
