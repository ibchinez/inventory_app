class InvitationsController < Devise::InvitationsController
	before_action :is_admin, only: [:create, :new]
   
   def is_admin
   		if cannot?( :invite, User )
       raise CanCan::AccessDenied
   end
end
end