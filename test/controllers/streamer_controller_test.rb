require 'test_helper'

class StreamerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get streamer_index_url
    assert_response :success
  end

end
