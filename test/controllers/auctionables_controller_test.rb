require 'test_helper'

class AuctionablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auctionable = auctionables(:one)
  end

  test "should get index" do
    get auctionables_url
    assert_response :success
  end

  test "should get new" do
    get new_auctionable_url
    assert_response :success
  end

  test "should create auctionable" do
    assert_difference('Auctionable.count') do
      post auctionables_url, params: { auctionable: { base_price: @auctionable.base_price, description: @auctionable.description, image_url: @auctionable.image_url, name: @auctionable.name } }
    end

    assert_redirected_to auctionable_url(Auctionable.last)
  end

  test "should show auctionable" do
    get auctionable_url(@auctionable)
    assert_response :success
  end

  test "should get edit" do
    get edit_auctionable_url(@auctionable)
    assert_response :success
  end

  test "should update auctionable" do
    patch auctionable_url(@auctionable), params: { auctionable: { base_price: @auctionable.base_price, description: @auctionable.description, image_url: @auctionable.image_url, name: @auctionable.name } }
    assert_redirected_to auctionable_url(@auctionable)
  end

  test "should destroy auctionable" do
    assert_difference('Auctionable.count', -1) do
      delete auctionable_url(@auctionable)
    end

    assert_redirected_to auctionables_url
  end
end
