require 'test_helper'

class Employer::BookmarksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employer_bookmarks_index_url
    assert_response :success
  end

end
