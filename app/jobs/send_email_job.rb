class SendEmailJob < ApplicationJob
  queue_as :default

  def perform
  	@users = User.all
		@users.each do |user| 
			JobMailer.welcome_email(user).deliver_now
		end
	end
end
