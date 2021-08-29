require "test_helper"

class Students::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get students_reviews_show_url
    assert_response :success
  end

  test "should get index" do
    get students_reviews_index_url
    assert_response :success
  end
end
