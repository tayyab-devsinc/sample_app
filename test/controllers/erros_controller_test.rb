require 'test_helper'

class ErrosControllerTest < ActionDispatch::IntegrationTest
  test "should get error_404" do
    get erros_error_404_url
    assert_response :success
  end

  test "should get error_500" do
    get erros_error_500_url
    assert_response :success
  end

  test "should get error_401" do
    get erros_error_401_url
    assert_response :success
  end

  test "should get error_402" do
    get erros_error_402_url
    assert_response :success
  end

end
