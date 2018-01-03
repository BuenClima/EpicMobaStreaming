require 'test_helper'

class StreamersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @streamer = streamers(:one)
  end

  test "should get index" do
    get streamers_url
    assert_response :success
  end

  test "should get new" do
    get new_streamer_url
    assert_response :success
  end

  test "should create streamer" do
    assert_difference('Streamer.count') do
      post streamers_url, params: { streamer: { birthday: @streamer.birthday, created_at: @streamer.created_at, game_id: @streamer.game_id, lastname: @streamer.lastname, name: @streamer.name, twitch_channel_url: @streamer.twitch_channel_url, twitch_user_id: @streamer.twitch_user_id, twitch_username: @streamer.twitch_username, updated_at: @streamer.updated_at } }
    end

    assert_redirected_to streamer_url(Streamer.last)
  end

  test "should show streamer" do
    get streamer_url(@streamer)
    assert_response :success
  end

  test "should get edit" do
    get edit_streamer_url(@streamer)
    assert_response :success
  end

  test "should update streamer" do
    patch streamer_url(@streamer), params: { streamer: { birthday: @streamer.birthday, created_at: @streamer.created_at, game_id: @streamer.game_id, lastname: @streamer.lastname, name: @streamer.name, twitch_channel_url: @streamer.twitch_channel_url, twitch_user_id: @streamer.twitch_user_id, twitch_username: @streamer.twitch_username, updated_at: @streamer.updated_at } }
    assert_redirected_to streamer_url(@streamer)
  end

  test "should destroy streamer" do
    assert_difference('Streamer.count', -1) do
      delete streamer_url(@streamer)
    end

    assert_redirected_to streamers_url
  end
end
