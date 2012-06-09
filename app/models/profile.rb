class Profile < ActiveRecord::Base
  attr_accessible :avatar, :fname, :lname, :dob, :about
  
  
  has_attached_file :avatar, 
          :styles => { :medium => "100x100>", :thumb => "32x32>" },
          :default_url =>"/assets/missing_:style.png"
  
end
