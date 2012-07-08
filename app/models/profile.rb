class Profile < ActiveRecord::Base
  attr_accessible :fname, :lname, :dob, :about, :avatar, :weight, :height, :gender, :waist_circ, :crop_x, :crop_y, :crop_w, :crop_h
  
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar
  
  
  mount_uploader :avatar, AvatarUploader
 def crop_avatar
    avatar.recreate_versions! if crop_x.present?
 end
 def age         
 age = (Date.today.year - self.dob.year).to_i
 end 
 
 def height_cm
   self.height * 2.54
 end
 
 def weight_kg
   self.weight*0.45359237
 end
 
 def estimate_bmi
   
  estimate_bmi = (self.weight / (self.height * self.height)) * 703
   
 end
 
 def estimate_bf
    if self.gender == "male"
    estimate_bf = (((((self.waist_circ *  4.15)-(self.weight *  1.082)) + 94.42))/ self.weight) * 100
    
    elsif self.gender == "female"
    res2 = (self.weight * 0.0732) + 8.987
    res3 = wrist_circ / 3 
    res4 = waist_circ * 0.157
    res5 = hip_circ *  0.157
    res6 = forearm_circ * 0.434
    res7 = res2 + res3
    res8 = res7 - res4 
    res9 = res8 - res5
    lbm = res6 + res9
    
    estimate_bf = (self.weight - lbm * 100) / self.weight
    
    else 
    estimate_bf = 0
    end
 end  
 
 
 def mbr
    if self.gender == "male"
    mbr = (13.75* self.weight_kg) + (5*self.height_cm) - (6.76* self.age) + 66
    elsif self.gender == "female"
    mbr = (9.56*(self.weight/0.45359237)) + (1.85*self.height) - (4.68* age) + 655
    else 
    mbr = 0
    end
    
 end
  

  
end
