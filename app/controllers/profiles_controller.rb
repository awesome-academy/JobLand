class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.find params[:id]
    @profile.image.attach(params[:image])
  end

  def edit
    @profile = Profile.find params[:id]
  end

  def update
    @profile = Profile.find params[:id]
    if @profile.update profile_params
      redirect_to user_path current_user
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:image)
  end
end







