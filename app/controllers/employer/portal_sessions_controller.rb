class Employer::PortalSessionsController < ApplicationController
	before_action :user_employer?
	def create
		 portal_session = Stripe::BillingPortal::Session.create({
	      customer: current_user.company.payment.stripe_customer_id,
	      return_url: 'http://localhost:3000/employer/companies',
	    })
	    redirect_to portal_session.url
	end
end
