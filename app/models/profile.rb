class Profile < ActiveRecord::Base
  attr_accessible :fname, :lname, :dob, :about, :avatar
  
  
  has_attached_file :avatar, 
          :styles => { :medium => "300x300>", 
          :thumb => "64x64>",
          :mini => "32x32>" },
          :default_url =>"/assets/missing_:style.png"
  
end
