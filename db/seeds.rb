# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

admin_list = [
    [ "admin1@dm.com", "admin1_name", "admin1@dm.com" ],
    [ "admin2@dm.com", "admin2_name", "admin2_password" ],
    [ "admin3@dm.com", "admin3_name", "admin3_password" ]
]

admin_list.each do |email, name, password|
  Admin.create( email: email, name: name )
  User.create( email: email, name: name, password: password, user_type: 1 )
end