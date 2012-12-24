# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create :email => 'dhermabook@gmail.com', :password => 'password',
                                                   :password_confirmation => 'password'
HistoryCategory.create [
  {:name => 'No Previous Medical Problem'},
  {:name => 'Cancer'},
  {:name => 'Respiratory Disease'},
  {:name => 'Heart Disease'},
  {:name => 'High Blood Pressure'},
  {:name => 'Stroke'},
  {:name => 'Hyperlipidemia'},
  {:name => 'Renal/prostate/Bladder Problems'},
  {:name => 'Gastrointestinal/Bowel Disease'},
  {:name => 'Diabetes'}
]                                                 
