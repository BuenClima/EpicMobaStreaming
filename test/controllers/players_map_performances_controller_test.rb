require 'test_helper'

class PlayersMapPerformancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @players_map_performance = players_map_performances(:one)
  end

  test "should get index" do
    get players_map_performances_url
    assert_response :success
  end

  test "should get new" do
    get new_players_map_performance_url
    assert_response :success
  end

  test "should create players_map_performance" do
    assert_difference('PlayersMapPerformance.count') do
      post players_map_performances_url, params: { players_map_performance: { loose_rate: @players_map_performance.loose_rate, map_id: @players_map_performance.map_id, player_id: @players_map_performance.player_id, win_rate: @players_map_performance.win_rate } }
    end

    assert_redirected_to players_map_performance_url(PlayersMapPerformance.last)
  end

  test "should show players_map_performance" do
    get players_map_performance_url(@players_map_performance)
    assert_response :success
  end

  test "should get edit" do
    get edit_players_map_performance_url(@players_map_performance)
    assert_response :success
  end

  test "should update players_map_performance" do
    patch players_map_performance_url(@players_map_performance), params: { players_map_performance: { loose_rate: @players_map_performance.loose_rate, map_id: @players_map_performance.map_id, player_id: @players_map_performance.player_id, win_rate: @players_map_performance.win_rate } }
    assert_redirected_to players_map_performance_url(@players_map_performance)
  end

  test "should destroy players_map_performance" do
    assert_difference('PlayersMapPerformance.count', -1) do
      delete players_map_performance_url(@players_map_performance)
    end

    assert_redirected_to players_map_performances_url
  end
end
