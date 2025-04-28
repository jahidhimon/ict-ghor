require "test_helper"

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_template "home"
  end

  test "home renders correct template" do
    get :home
    assert_template "home"
    assert_template "home"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_template "about"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_template "contact"
  end
end
