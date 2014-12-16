# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :passenger do |p|
  	p.name {Faker::Name.name}
  	p.email {Faker::Internet.email}
  end
end
