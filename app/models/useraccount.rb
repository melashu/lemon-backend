class Useraccount < ApplicationRecord
  EMAIL_REGEX = /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
  
  
  validates :email, presence: true, uniqueness: {case_sensative:false}
  validates :password, presence: true, length:{in: 6..10} 
  validates :first_name, presence: true, length:{minimum: 2}
  validates :last_name, presence: true, length:{minimum: 2}
 
  # validates :country, length: {minimum: 3, maximum: 100}
  # validates :phone
  has_many :items, dependent: :destroy
  has_many :orders, dependent: :destroy

    has_secure_password
end
