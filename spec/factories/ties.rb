# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ty, :class => 'Tie' do
    user nil
    circle nil
  end
end
