# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meal do
    name "MyString"
    ndb 1
    quanity 1
    units "MyString"
    date "2012-05-24"
    mcategory_id "MyString"
    integer "MyString"
    user_id 1
  end
end
