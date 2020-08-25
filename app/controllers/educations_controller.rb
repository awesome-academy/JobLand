class EducationsController < ApplicationController
  def index
    @education = Education.new
    @educations = current_user.cv.educations
  end

  def new
    @education = Education.new
    @educations = current_user.cv.educations
    respond_to do |format|
      format.html{render(partial:"education_form")}
    end

  def show
    @user = User.find params[:id]
    @education = Education.new
    @educations = @user.cv.educations
  end

  end

  def create
    @education = current_user.cv.educations.build education_params
    if @education.save
      @educations = current_user.cv.educations
      @education = Education.new
      respond_to do |format|
        format.html{render(partial:"education_section")}
      end
    end
  end

  def edit
    @education = Education.find params[:id]
    respond_to do |format|
      format.html{render(partial:"education_form")}
    end
  end

  def update
    @education = Education.find params[:id]
    if @education.update education_params
      @education = Education.new
      @educations = current_user.cv.educations
      respond_to do |format|
        format.html{render(partial:"education_section")}
        format.json
      end
    end
  end

  def destroy
    @education = Education.find params[:id]
    if @education.destroy
      respond_to do |format|
        format.json{render json: {result: 'OK'}}
      end
    end
  end

private

  def education_params
    params.require(:education).permit(:yearschool, :degree, :school, :status)
  end
end
