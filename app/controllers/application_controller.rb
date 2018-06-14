class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	after_action :assign_role, only: [:create], if: :devise_controller?
  #after_action :add_admin_role, only: [:update], if: :invitations_controller?
	rescue_from CanCan::AccessDenied do |exception|
		respond_to do |format|
			format.json { head :forbidden, content_type: 'text/html' }
			format.html{redirect_to root_url, notice:exception.message}
			format.js   { head :forbidden, content_type: 'text/html' }
		end
   	end

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
