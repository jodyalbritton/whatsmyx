class Contact < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :inverse,
             :class_name => "Contact"

  belongs_to :sender,
             :class_name => "Actor"
  belongs_to :receiver,
             :class_name => "Actor"

  has_many :ties,
           :dependent  => :destroy,
           :before_add => :set_user_author

  has_many :relations,
           :through => :ties,
           :after_remove => :unset_follow_action
end
