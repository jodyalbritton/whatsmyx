# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mental_activity do
    user nil
    mental_activity_type nil
    value 1.5
    date "2012-09-11"
    time "2012-09-11 23:31:23"
    duration 1
  end
end
