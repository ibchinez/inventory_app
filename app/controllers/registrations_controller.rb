 class RegistrationsController < Devise::RegistrationsController
# 	after_action :assign_role, only: [:create]

# 	  after_action :assign_role, only: [:create], if: :devise_controller?
  
   def create
   	super  		
   end

#   def assign_role
#   	@number_of_users = User.all.count
#   	if @number_of_users == 1 
#   		current_user.add_role :admin
#   	end
#   end

	 def after_sign_up_path_for(resource)
    dashboards_index_path
   end
   
	 def after_update_path_for(resource)
      dashboards_index_path
	 end
 end
