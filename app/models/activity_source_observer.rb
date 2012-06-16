class ActivitySourceObserver < ActiveRecord::Observer
 
 
 
 observe :post, :comment, :stat, :ingredient

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
      
  elsif @object == "Stat"
      Activity.create!(
      :user => target.user, 
      :target_id => target.id, 
      :activity_type=> target.class.to_s, 
      :created_at => target.created_at, 
      :updated_at => target.updated_at,
      :target_type => target.class.to_s, 
      :verb => "tracked")
      
  elsif @object == "Ingredient"
      Activity.create!(
      :user => target.user, 
      :target_id => target.id, 
      :activity_type=> target.class.to_s, 
      :created_at => target.created_at, 
      :updated_at => target.updated_at,
      :target_type => target.class.to_s, 
      :verb => "logged")
      
   
   end
 
  
      
  end


 
  

end
