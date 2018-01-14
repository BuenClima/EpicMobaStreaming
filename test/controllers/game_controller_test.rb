require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get lol" do
    get game_lol_url
    assert_response :success
  end

  test "should get hots" do
    get game_hots_url
    assert_response :success
  end

  test "should get dota2" do
    get game_dota2_url
    assert_response :success
  end

end
