# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ingredient do
    what_food "MyString"
    servings 1
    food nil
    serving_size 1
  end
end
