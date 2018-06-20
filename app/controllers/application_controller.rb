class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :assign_role, only: [:create], if: :devise_controller?
  #after_action :add_admin_role, only: [:update], if: :invitations_controller?
	
	rescue_from CanCan::AccessDenied do |exception|
		if user_signed_in?
		respond_to do |format|		
			if user_signed_in?
			format.json { head :forbidden, content_type: 'text/html' }

			format.html{redirect_to dashboards_index_path, notice:exception.message}
			format.js   { head :forbidden, content_type: 'text/html' }
			end
		end
		end

   	end

   	def after_sign_in_path_for(resource_or_scope)
       dashboards_index_path
    end 

  def after_sign_up_path_for(resource_or_scope)
    	dashboards_index_path
  end


  def after_accept_path_for(resource)
  	dashboards_index_path
  end

   	def after_sign_out_path_for(resource_or_scope)
   		new_user_session_path
   	end

   	#assign role to first user as super_admin
  def assign_role
  	@number_of_users = User.all.count
  	if @number_of_users == 1 
  		current_user.add_role :super_admin  		
  	end
  end

  # def add_admin_role
  # 	current_user.add_role(:admin)
  # end
end
