class Employer::ProfilesController < ApplicationController
  def show
    @user = User.find params[:id]
    @education = Education.new
    @educations = @user.cv.educations
    @experience  =  Experience.new
    @experiences = @user.cv.experiences
    @portfolio = Portfolio.new
    @portfolios = @user.cv.portfolios
    @cv_skill = CvSkill.new
    @cv_language = CvLanguage.new
    @cv = Cv.find params[:id]
    @profile = Profile.find params[:id]
    @applyjobs = Applyjob.all
    @bookmarks = Bookmark.all
  end
end
