class UsersController < ApplicationController
  def new
    @cv_language  =  CvLanguage.new
    @cv_skill = CvSkill.new
  end

  def show
    @cv_skill = CvSkill.new
    @user = User.find params[:id]
    @cv = Cv.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update
      respond_to do |format|
        format.html{render(partial:"user_edit_profile")}
        format.json
      end
    end
  end

  def language_params
    params.require(:cv_language).permit :language_id
  end
end
