class User < ActiveRecord::Base

  after_create :initialize_profile, :create_fitbit_account
  include Likeable::UserMethods
  has_merit
  extend FriendlyId
  friendly_id :username, use: :slugged
  acts_as_follower
  acts_as_followable
  rolify
  
  #validations 
  validates_presence_of :name, :username
  validates_uniqueness_of :username, :email, :case_sensitive => false
  validate :username_format
	
  
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable, :invitable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name,:email, :password, :password_confirmation, :remember_me, :username, :profile_attributes, 
  :settings_attributes, :dgoal_attributes, :opt_in, :privacy, :notify_by_email
  validates_confirmation_of :password
 
 #assoications 
  has_many :activities, dependent: :destroy
  
  has_many :groups
  
  has_many :pactivities, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :relationships
  has_many :messages, :foreign_key => :sender_id
  has_many :circles, :foreign_key => :author_id
  has_many :stats, dependent: :destroy
  has_many :meals, dependent: :destroy
  has_many :ingredients, dependent: :destroy
  has_many :goals, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :services, :dependent => :destroy
  has_one :profile, dependent: :destroy
  has_one :dgoal, dependent: :destroy
  has_one :settings, dependent: :destroy
  has_one :fitbitaccount, dependent: :destroy

 
 
  
 
  
 
  
 accepts_nested_attributes_for :profile, :settings, :dgoal
 
  def initialize_profile
      (self.profile = Profile.new).save
      (self.settings = Settings.new).save
      (self.dgoal = Dgoal.new).save
  end
  #fitbit integration 
  def fb_client_data
     FitgemClientWrapper.new(self.fitbitaccount)
  end
  
  def linked?
    if self.fitbitaccount.nil?
      false
    else
      self.fitbitaccount.verified?
    end
  end

  def audience
     audience = self.followers
  end
  
  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
  data = access_token.extra.raw_info
  if user = self.find_by_email(data.email)
    user
  else # Create a user with a stub password. 
    self.create(:email => data.email, :password => Devise.friendly_token[0,20]) 
  end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"]
      end
    end
  end
 
  def username_format
  has_one_letter = username =~ /[a-zA-Z]/
  all_valid_characters = username =~ /^[a-zA-Z0-9_]*[a-zA-Z][a-zA-Z0-9_]*$/
  errors.add(:username, "must have at least one letter and contain only letters, digits, or underscores") unless (has_one_letter and all_valid_characters)
  end
  
  def update_with_password(params={})
        current_password = params.delete(:current_password)

        if params[:password].blank?
          params.delete(:password)
          params.delete(:password_confirmation) if params[:password_confirmation].blank?
        end 

        result = if params[:password].blank? || valid_password?(current_password) 
          update_attributes(params)
        else
          self.attributes = params
          self.valid?
          self.errors.add(:current_password, current_password.blank? ? :blank : :invalid)
          false
        end 

        clean_up_passwords
        result
      end
  after_create :send_welcome_email
   # override Devise method
  # no password is required when the account is created; validate password when the user sets one
 
  def password_required?
    if !persisted? 
      false
    else
      !password.nil? || !password_confirmation.nil?
    end
  end
  
  # override Devise method
  def confirmation_required?
    false
  end
  
  # override Devise method
  def active_for_authentication?
    confirmed? || confirmation_period_valid?
  end
  
  # new function to set the password
  def attempt_set_password(params)
    p = {}
    p[:password] = params[:password]
    p[:password_confirmation] = params[:password_confirmation]
    update_attributes(p)
  end

  # new function to determine whether a password has been set
  def has_no_password?
    self.encrypted_password.blank?
  end

  # new function to provide access to protected method pending_any_confirmation
  def only_if_unconfirmed
   pending_any_confirmation {yield}
  end
  private

  def send_welcome_email
    unless self.email.include?('@example.com') && Rails.env != 'test'
      UserMailer.welcome_email(self).deliver
    end
  end
  
  def create_fitbitaccount
    self.fitbitaccount = Fitbitaccount.new
    save
  end
 
      
     
      
end
