require 'test_helper'

class TopicUsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get topic_us_new_url
    assert_response :success
  end

  test "should get create" do
    get topic_us_create_url
    assert_response :success
  end

  test "should get show" do
    get topic_us_show_url
    assert_response :success
  end

end
