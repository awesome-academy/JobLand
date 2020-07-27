class LanguagesController < ApplicationController
   def new
    @language = Language.new
  end

  def create
    @language = Language.new
  end

  def show
    @language =  Language.all
  end

  def edit
    @language = Language.new

  end



end

