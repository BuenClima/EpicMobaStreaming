require 'test_helper'

class StatisticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @statistic = statistics(:one)
  end

  test "should get index" do
    get statistics_url
    assert_response :success
  end

  test "should get new" do
    get new_statistic_url
    assert_response :success
  end

  test "should create statistic" do
    assert_difference('Statistic.count') do
      post statistics_url, params: { statistic: { created_at: @statistic.created_at, name: @statistic.name, player_id: @statistic.player_id, ratio: @statistic.ratio, team_id: @statistic.team_id, updated_at: @statistic.updated_at } }
    end

    assert_redirected_to statistic_url(Statistic.last)
  end

  test "should show statistic" do
    get statistic_url(@statistic)
    assert_response :success
  end

  test "should get edit" do
    get edit_statistic_url(@statistic)
    assert_response :success
  end

  test "should update statistic" do
    patch statistic_url(@statistic), params: { statistic: { created_at: @statistic.created_at, name: @statistic.name, player_id: @statistic.player_id, ratio: @statistic.ratio, team_id: @statistic.team_id, updated_at: @statistic.updated_at } }
    assert_redirected_to statistic_url(@statistic)
  end

  test "should destroy statistic" do
    assert_difference('Statistic.count', -1) do
      delete statistic_url(@statistic)
    end

    assert_redirected_to statistics_url
  end
end
