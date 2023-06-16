class UseraccountSerializer
  include JSONAPI::Serializer
  attributes :first_name, :last_name, :country, :city, :phone, :about, :linkedin, :facebook, :twitter, :website
end
