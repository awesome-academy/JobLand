class JobMailer < ApplicationMailer
	def welcome_email(user)
		@jobs = Job.job_check
		unless @jobs.nil?
	    @user = user
	    mail(to: @user.email, subject: 'Welcome to Website')
		end
	end
end
