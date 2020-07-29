class CvLanguagesController < ApplicationController
  def new
    @cv_language  =  CvLanguage.new
  end

  def create
    @cv_language = current_user.cv.cv_languages.build language_params
    @cv_language.save
    flash[:success] = 'Success'
    respond_to do |format|
      format.html {render(partial: "cv_language")}
      format.js
      format.json
    end
  end

  def destroy
    @cv_language = CvLanguage.find params[:id]
    @cv_language.destroy
    flash[:success] = 'Remove'
    respond_to do |format|
      format.html { redirect_to users_url }
      format.js
    end
  end

  private
  def language_params
    params.require(:cv_language).permit :language_id
  end
end
