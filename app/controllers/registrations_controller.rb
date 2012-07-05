class  RegistrationsController < Devise:: RegistrationsController
  def create
    @registration = build_resource # Needed for Merit
    super
  end

  def update
    @registration = resource # Needed for Merit
    super
  end
  
  def after_inactive_sign_up_path_for(resource)
    # the page prelaunch visitors will see after they request an invitation
    '/thankyou.html'
  end
  
  def after_sign_up_path_for(resource)
    # the page new users will see after sign up (after launch, when no invitation is needed)
    redirect_to root_path
  end
end
