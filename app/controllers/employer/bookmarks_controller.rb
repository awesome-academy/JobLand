class Employer::BookmarksController < ApplicationController
	before_action :user_employer?
  def index
  	@bookmarks = []
  	current_user.jobs.each do |job|
  		job.bookmarks.each do |book|
  		@bookmarks << book
  		end
  	end

  end
end
