class UsersController < ApplicationController
  def show
    @user = User.find params[:id]
    @cv = Cv.find params[:id]
  end
  def update
  end
end
