class Employers::CompaniesController < ApplicationController
	def show
		@company = Company.first
	end

	def index
		@jobs = current_user.company.jobs.count
	end
end