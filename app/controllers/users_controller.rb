class UsersController < ApplicationController
  def new
    @cv_language  =  CvLanguage.new
  end

  def show
    @user = User.find params[:id]
    @cv = Cv.find params[:id]
  end

  def create
    @education = Education.new education_params
    if @education.save
    end
end

private

  def education_params
    params.require(:education).permit(:school, :degree, :yearschool, :status)
  end


  def language_params
    params.require(:cv_language).permit :language_id
  end

end
