class CvLanguagesController < ApplicationController
  def index
     @cv_language  =  CvLanguage.new
  end

  def new
    @cv_language  =  CvLanguage.new
    respond_to do |format|
      format.html {render(partial: "cv_language_form")}
      format.js
      format.json
    end
  end

  def create
    @cv_language = current_user.cv.cv_languages.build language_params
    @cv_language.save
    respond_to do |format|
      format.html {render(partial: "cv_language_section")}
      format.js
      format.json
    end
  end

  def destroy
    @cv_language = CvLanguage.find params[:id]
    @cv_language.destroy
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def language_params
    params.require(:cv_language).permit :language_id
  end
end


