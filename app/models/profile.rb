class Profile < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :avatar, :fname, :lname, :dob, :about
  has_attached_file :avatar, 
          :styles => { :medium => "300x300>", :thumb => "100x100>" },
          :default_url => "/assets/no_photo.jpg"
  
end
