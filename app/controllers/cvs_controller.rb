class CvsController < ApplicationController
  before_action :authenticate_user!

  def new
    @cv = Cv.new
  end

  def edit
    @cv = Cv.find params[:id]
  end

  def update
    @cv = Cv.find params[:id]
    if @cv.update cv_params
      respond_to do |format|
        format.html{render(partial:"cv_introduction")}
        format.json
      end
    end
  end

  private

  def cv_params
    params.require(:cv).permit(:introduction)
  end
end

