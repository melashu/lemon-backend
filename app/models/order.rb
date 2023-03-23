class Order < ApplicationRecord
  validates :order_date, presence: true, comparison: {greater_than: DateTime.now-1} 
  validates :status, presence: true, inclusion: {in: %w(pending closed), message: " is not valid status"}

  belongs_to :useraccount
  belongs_to :item

end
