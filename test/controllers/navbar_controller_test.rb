require 'test_helper'

class NavbarControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get forum" do
    get :forum
    assert_response :success
  end

  test "should get inbox" do
    get :inbox
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

end
