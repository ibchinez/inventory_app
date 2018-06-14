class InvitationsController < Devise::InvitationsController
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
end