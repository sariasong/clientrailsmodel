require 'test_helper'

class StaticClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_clients_home_url
    assert_response :success
  end

  test "should get about" do
    get static_clients_about_url
    assert_response :success
  end

end
