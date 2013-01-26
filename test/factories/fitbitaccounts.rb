# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fitbitaccount do
    user nil
    request_token "MyString"
    request_secret "MyString"
    access_token "MyString"
    access_secret "MyString"
    verifier "MyString"
    fb_user_id "MyString"
  end
end
