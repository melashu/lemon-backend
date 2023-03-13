class SeedData < ActiveRecord::Migration[7.0]
  def change
    Useraccount.create!(first_name:'Meshu', last_name:'Amare', email:'meshu.amare@gmail.com',password_digist:'12345678',admin:true)
  end
end
