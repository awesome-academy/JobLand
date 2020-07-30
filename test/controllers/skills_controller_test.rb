require 'test_helper'

class SkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get skills_new_url
    assert_response :success
  end

  test "should get update" do
    get skills_update_url
    assert_response :success
  end

  test "should get edit" do
    get skills_edit_url
    assert_response :success
  end

  test "should get destoy" do
    get skills_destoy_url
    assert_response :success
  end

end
