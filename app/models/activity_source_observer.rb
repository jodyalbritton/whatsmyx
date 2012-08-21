class ActivitySourceObserver < ActiveRecord::Observer
 
 
 
 observe :post, :comment, :stat, :pactivity, :meal

  def after_create(target)
   @object = target.class.to_s
   
   
      if @object == "Post"
      Activity.create!(
      :user => target.user, 
      :target_id => target.id, 
      :activity_type=> target.class.to_s, 
      :created_at => target.date, 
      :updated_at => target.updated_at,
      :parent_id => target.parent_id,
      :target_type => target.class.to_s,
      :scope => target.scope,
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
      :created_at => target.date, 
      :updated_at => target.updated_at,
      :target_type => target.class.to_s,
      :scope => target.scope,
      :verb => "tracked")
      
      elsif @object == "Meal"
      Activity.create!(
      :user => target.user, 
      :target_id => target.id, 
      :activity_type=> target.class.to_s, 
      :created_at => target.date, 
      :updated_at => target.updated_at,
      :target_type => target.class.to_s,
      :scope => target.scope, 
      :verb => "tracked")
      
      elsif @object == "Pactivity"
      Activity.create!(
      :user => target.user, 
      :target_id => target.id, 
      :activity_type=> target.class.to_s, 
      :created_at => target.date, 
      :updated_at => target.updated_at,
      :target_type => target.class.to_s,
      :scope => target.scope, 
      :verb => "tracked")
      
 
      
   
   end
   end

 def after_destroy(target)
   
 end
  

end
