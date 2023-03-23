class Item < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2, message: "%(value) must be more 2 character"}
  validates :model, presence: true, length: {minimum:3, message: "model must be more than 3 character "}
  validates :price, presence: true, numericality: true
  belongs_to :useraccount
  has_many :orders, dependent: :destroy

end
