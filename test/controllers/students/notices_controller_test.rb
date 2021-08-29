require "test_helper"

class Students::NoticesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get students_notices_index_url
    assert_response :success
  end

  test "should get show" do
    get students_notices_show_url
    assert_response :success
  end
end
