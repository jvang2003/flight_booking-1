# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :airport do |a|
  	a.code 'SFO'
  end
end
