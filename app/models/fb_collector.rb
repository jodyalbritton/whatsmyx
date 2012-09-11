class FbCollector < ActiveRecord::Base
  belongs_to :user
  belongs_to :fitbitaccount  
  attr_accessible :user, :fitbitaccount, :activity_score, :weight,:bmi, :calories_in, :calories_out, :distance, :elevation, :enabled, :fat, :floors,
   :last_run, :minutes_asleep, :steps, :time_in_bed, :minutes_sedentary, :minutes_lightly_active, :minutes_fairly_active, :start_time, :minutes_to_sleep
  
  
  def run_import
    if self.weight == true
      self.import_weight
    end
    if self.fat == true
      self.import_body_fat
    end
    if self.bmi == true
      self.import_bmi
    end
    
    if self.calories_out == true
      self.import_calories
    end
    
    if self.steps == true
      self.import_steps
    end
  end
  
  def import_weight
    if self.user.fb_linked?
      category = Category.where(:name => "Weight")
      fb_weight = self.user.fb_client_data. data_by_time_range("/body/weight", {:base_date => Date.today, :period => "max"})["body-weight"]

        fb_weight.each do |weight|
         Stat.find_or_create_by_date_and_value(
         :user_id => self.user.id,
         :date => weight["dateTime"],
         :value => weight["value"] ,
         :category_id => category.last.id,
         :source => "Fitbit",
         :sunit =>  "lbs")
        end
        
        self.last_run = Date.today
        save
    else 
      raise error
    end 
  end
  
  def import_body_fat
    if self.user.fb_linked?
      category = Category.where(:name => "Body Fat")
      fb_body_fat = self.user.fb_client_data. data_by_time_range("/body/fat", {:base_date => Date.today, :period => "max"})["body-fat"]

        fb_body_fat.each do |fat|
         Stat.find_or_create_by_date_and_value(
         :user_id => self.user.id,
         :date => fat["dateTime"],
         :value => fat["value"] ,
         :category_id => category.last.id,
         :source => "Fitbit",
         :sunit =>  "%")
        end
        
        self.last_run = Date.today
        save
    else 
      raise error
    end 
  end
  def import_bmi
    if self.user.fb_linked?
      category = Category.where(:name => "BMI")
      fb_bmi = self.user.fb_client_data. data_by_time_range("/body/bmi", {:base_date => Date.today, :period => "max"})["body-bmi"]

        fb_bmi.each do |bmi|
         Stat.find_or_create_by_date_and_value(
         :user_id => self.user.id,
         :date => bmi["dateTime"],
         :value => bmi["value"] ,
         :category_id => category.last.id,
         :source => "Fitbit",
         :sunit =>  "BMI")
        end
        
        self.last_run = Date.today
        save
    else 
      raise error
    end 
  end
  
  def import_calories
    if self.user.fb_linked?
      category = Category.where(:name => "Calories Out")
      fb_calories = self.user.fb_client_data.data_by_time_range("/activities/log/calories", {:base_date => Date.today, :period => "max"})["activities-log-calories"]


        fb_calories.each do |calorie|
         Stat.find_or_create_by_date_and_value(
         :user_id => self.user.id,
         :date => calorie["dateTime"],
         :value => calorie["value"] ,
         :category_id => category.last.id,
         :source => "Fitbit",
         :sunit =>  "kcals")
        end
        
        self.last_run = Date.today
        save
    else 
      raise error
    end 
  end
  
   def import_minutes_sedentary
    if self.user.fb_linked?
      exercise = Exercise.where(:name => "Sedentary Minutes")
      fb_minsed = self.user.fb_client_data.data_by_time_range("/activities/log/minutesSedentary", {:base_date => Date.today, :period => "max"})["activities-log-minutesSedentary"]


        fb_minsed.each do |minsed|
         Stat.find_or_create_by_date_and_value(
         :user_id => self.user.id,
         :date => minsed["dateTime"],
         :value => minsed["value"] ,
         :exercise_id => exercise.last.id,
         :source => "Fitbit",
         :verb => "Logged")
        end
        
        self.last_run = Date.today
        save
    else 
      raise error
    end 
  end
  
  def import_steps
    if self.user.fb_linked?
      exercise = Exercise.where(:name => "Steps")
      fb_steps = self.user.fb_client_data.data_by_time_range("/activities/log/steps", {:base_date => Date.today, :period => "max"})["activities-log-steps"]


        fb_steps.each do |step|
         Pactivity.find_or_create_by_date_and_value(
         :user_id => self.user.id,
         :date => step["dateTime"],
         :value => step["value"] ,
         :exercise_id => exercise.last.id,
         :source => "Fitbit",
         :verb => "Logged")
        end
        
        self.last_run = Date.today
        save
    else 
      raise error
    end 
  end

end
