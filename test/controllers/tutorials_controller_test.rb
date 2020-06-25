require 'test_helper'

class TutorialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tutorials_index_url
    assert_response :success
  end

  test "should get show" do
    get tutorials_show_url
    assert_response :success
  end

end
