class RegistrationsController < Devise::RegistrationsController

	def new
	  super
	  @registration_resource = resource
	end

	def edit
	  super
	  @registration_resource = resource
	end

	def create
	  super
	  @registration_resource = resource
	end
end
