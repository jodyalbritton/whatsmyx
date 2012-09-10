class FbCollector < ActiveRecord::Base
  belongs_to :user
  belongs_to :fitbitaccount  
  attr_accessible :user, :fitbitaccount, :activity_score, :bmi, :calories_in, :calories_out, :distance, :elevation, :enabled, :fat, :floors, :last_run, :minutes_asleep, :steps, :time_in_bed, :weight
end
