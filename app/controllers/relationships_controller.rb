class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    user = User.find(params[:follow_id])
    current_user.follow(user)
    flash[:success] = t("userp.saveUser")
    redirect_to profile_path(user.id)
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    flash[:danger] = t("userp.unSaveUser")
    redirect_to profile_path(user.id)
  end
end
