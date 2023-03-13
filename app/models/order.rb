class Order < ApplicationRecord
  belongs_to :useraccount
  belongs_to :item
end
