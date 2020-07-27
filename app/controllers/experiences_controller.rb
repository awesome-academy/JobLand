class ExperiencesController < ApplicationController
 def new
    @company = Experience.new
  end

  def create
    @company = Experience.new
  end

  def show
    @company =  Experience.all
  end

  def edit
    @company = Experience.new

  end

end
