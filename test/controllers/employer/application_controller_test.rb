require 'test_helper'

class Employer::ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employer_application_index_url
    assert_response :success
  end

end
