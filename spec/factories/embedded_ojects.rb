# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :embedded_oject do
    embeddable_id 1
    embeddable_type "MyString"
    embeddable_id "MyString"
  end
end
