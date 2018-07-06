class InvitationsController < Devise::InvitationsController
	
	before_action :authenticate_user!
	before_action :is_super_admin, only: [:create, :new]
	after_action :add_admin_role, only:[:update]

  # PUT /resource/invitation
  def add_admin_role
  	current_user.add_role(:admin)
  end

  def is_super_admin
   if cannot?( :invite, User )
     raise CanCan::AccessDenied
   end
 end

 def after_invite_path_for(resource)
  dashboards_index_path
 end
end