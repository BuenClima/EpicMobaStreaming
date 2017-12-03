require 'test_helper'

class PlayersPicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @players_pick = players_picks(:one)
  end

  test "should get index" do
    get players_picks_url
    assert_response :success
  end

  test "should get new" do
    get new_players_pick_url
    assert_response :success
  end

  test "should create players_pick" do
    assert_difference('PlayersPick.count') do
      post players_picks_url, params: { players_pick: { champion_id: @players_pick.champion_id, kda: @players_pick.kda, pick_rate: @players_pick.pick_rate, player_id: @players_pick.player_id, win_rate: @players_pick.win_rate } }
    end

    assert_redirected_to players_pick_url(PlayersPick.last)
  end

  test "should show players_pick" do
    get players_pick_url(@players_pick)
    assert_response :success
  end

  test "should get edit" do
    get edit_players_pick_url(@players_pick)
    assert_response :success
  end

  test "should update players_pick" do
    patch players_pick_url(@players_pick), params: { players_pick: { champion_id: @players_pick.champion_id, kda: @players_pick.kda, pick_rate: @players_pick.pick_rate, player_id: @players_pick.player_id, win_rate: @players_pick.win_rate } }
    assert_redirected_to players_pick_url(@players_pick)
  end

  test "should destroy players_pick" do
    assert_difference('PlayersPick.count', -1) do
      delete players_pick_url(@players_pick)
    end

    assert_redirected_to players_picks_url
  end
end
