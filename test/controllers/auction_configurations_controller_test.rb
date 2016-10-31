require 'test_helper'

class AuctionConfigurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auction_configuration = auction_configurations(:one)
  end

  test "should get index" do
    get auction_configurations_url
    assert_response :success
  end

  test "should get new" do
    get new_auction_configuration_url
    assert_response :success
  end

  test "should create auction_configuration" do
    assert_difference('AuctionConfiguration.count') do
      post auction_configurations_url, params: { auction_configuration: { application_name: @auction_configuration.application_name, bid_increment_value: @auction_configuration.bid_increment_value } }
    end

    assert_redirected_to auction_configuration_url(AuctionConfiguration.last)
  end

  test "should show auction_configuration" do
    get auction_configuration_url(@auction_configuration)
    assert_response :success
  end

  test "should get edit" do
    get edit_auction_configuration_url(@auction_configuration)
    assert_response :success
  end

  test "should update auction_configuration" do
    patch auction_configuration_url(@auction_configuration), params: { auction_configuration: { application_name: @auction_configuration.application_name, bid_increment_value: @auction_configuration.bid_increment_value } }
    assert_redirected_to auction_configuration_url(@auction_configuration)
  end

  test "should destroy auction_configuration" do
    assert_difference('AuctionConfiguration.count', -1) do
      delete auction_configuration_url(@auction_configuration)
    end

    assert_redirected_to auction_configurations_url
  end
end
