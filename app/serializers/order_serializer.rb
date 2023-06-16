class OrderSerializer
  include JSONAPI::Serializer
  attributes :order_date, :quantity, :status
end
