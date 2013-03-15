module SessionsHelper

	private
		def current_user=(user)
			@current_user = user
		end

		def current_user
			@current_user ||= current_account.user
		end

	def current_user?(user)
		user == current_user
	end
	
end
