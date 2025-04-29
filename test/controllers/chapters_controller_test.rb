require "test_helper"

class ChaptersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chapters_url
    assert_response :success
    assert_template "index"
  end

  test "should get show" do
    get chapter_url(chapters(:chapterOne))
    assert_response :success
    assert_template "show"
  end
end
