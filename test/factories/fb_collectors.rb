# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fb_collector do
    user nil
    last_run "2012-09-09 20:29:55"
    enabled false
    calories_in false
    calories_out false
    weight false
    steps false
    distance false
    floors false
    elevation false
    activity_score false
    time_in_bed false
    minutes_asleep false
    bmi false
    fat false
  end
end
