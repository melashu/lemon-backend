class ItemSerializer
  include JSONAPI::Serializer
  attributes :name, :model, :price, :quantity
   has_many :orders
   
   belongs_to :useraccount

end
