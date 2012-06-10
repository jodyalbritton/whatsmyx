class ActivitySourceObserver < ActiveRecord::Observer
 
 
 
 observe :post

  def after_create(target)
    Activity.create!(
      :user => target.user, 
      :target_id => target.id, 
      :activity_type=> target.class.to_s, 
      :created_at => target.created_at, 
      :updated_at => target.updated_at,
      :target_type => target.class.to_s)
      
  end


 
  

end
