class BookmarksController < ApplicationController
  def index
    @user = current_user
    @profile = current_user.profile
    @bookmarks = @user.bookmarks.paginate(
      page: params[:page], per_page: 5)
  end

  def create
    @bookmark = current_user.bookmarks.build bookmark_params
    @bookmark.save
    respond_to do |format|
      format.html { render partial:'bookmarks/bookmarked_form' }
      format.js
    end
  end

  def destroy
    @bookmark = Bookmark.find params[:id]
    @bookmark.destroy
    flash[:success] = t("aj.profile updated")
    redirect_to user_bookmarks_path
  end

  private
  def bookmark_params
    params.require(:bookmark).permit :job_id
  end
end
