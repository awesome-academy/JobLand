require 'test_helper'

class Employer::PaymentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get employer_payment_new_url
    assert_response :success
  end

end
