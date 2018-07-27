class DashboardsController < ApplicationController	
	before_action :authenticate_user!

	def index
		if params[:search]
			@messages = Message.search_by_title(params[:search]).paginate(:page => params[:page]).per_page(5)
		else
			@messages = Message.order("id DESC").paginate(:page => params[:page]).per_page(5)
		end
	end

end
