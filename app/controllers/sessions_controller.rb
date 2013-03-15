class SessionsController < Devise::SessionsController

	def create
	  super
	  @login_resource = resource
	end

end
