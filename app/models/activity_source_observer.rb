class ActivitySourceObserver < ActiveRecord::Observer
 
 
 
 observe :post, :comment, :stat

  def after_create(target)
   @object = target.class.to_s
   
   
   if @object == "Post"
    Activity.create!(
      :user => target.user, 
      :target_id => target.id, 
      :activity_type=> target.class.to_s, 
      :created_at => target.created_at, 
      :updated_at => target.updated_at,
      :target_type => target.class.to_s,
      :verb => "Posted")
   elsif @object == "Comment"
      Activity.create!(
      :user => target.owner, 
      :target_id => target.id, 
      :activity_type=> target.class.to_s, 
      :created_at => target.created_at, 
      :updated_at => target.updated_at,
      :target_type => target.class.to_s,
      :parent_id => target.commentable_id,
      :verb => "commented")
      
   
   end
 
  
      
  end


 
  

end
