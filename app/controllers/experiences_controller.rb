class ExperiencesController < ApplicationController
  def new
    @experience  =  Experience.new
  end

  def create
  @experience = current_user.cv.experiences.build experience_params
  @experience.save
  flash[:success] = t("global.experience.success")
  respond_to do |format|
    format.html {render(partial: "experience")}
    format.js
    format.json
  end
end

  def destroy
  @experience = Experience.find params[:id]
  @experience.destroy
  flash[:success] = t("global.experience.remove")
  respond_to do |format|
    format.html
    format.js
  end
end

 private
  def experience_params
    params.require(:experience).permit :name ,:title ,:description ,:work_status,
      :work_status2,:work_date,:work_date2
  end
end

