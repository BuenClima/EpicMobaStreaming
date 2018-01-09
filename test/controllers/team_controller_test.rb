require 'test_helper'

class TeamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get team_index_url
    assert_response :success
  end

  test "should get team" do
    get team_team_url
    assert_response :success
  end

end
