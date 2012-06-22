# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    name "MyString"
    user ""
    privacy_level "MyString"
    active false
    description "MyText"
  end
end
