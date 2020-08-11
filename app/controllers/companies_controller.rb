class CompaniesController < ApplicationController
  def show
  	@company = Company.first
  end


end
