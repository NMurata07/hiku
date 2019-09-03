require 'test_helper'

class TopicDsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get topic_ds_new_url
    assert_response :success
  end

  test "should get create" do
    get topic_ds_create_url
    assert_response :success
  end

  test "should get show" do
    get topic_ds_show_url
    assert_response :success
  end

end
