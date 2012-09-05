class  RegistrationsController < Devise:: RegistrationsController
  def create
    @registration = build_resource # Needed for Merit
    super
  end

  def update
    @registration = resource # Needed for Merit
    super
  end
  
 
  
  protected
  def after_sign_up_path_for(resource)
   '/static_pages/thanks'
  end
  def after_inactive_sign_up_path_for(resource)
    '/static_pages/thanks'
  end
end
