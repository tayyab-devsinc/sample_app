require 'test_helper'

class ErrorsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get error_404" do
    get errors_controller_error_404_url
    assert_response :success
  end

end
