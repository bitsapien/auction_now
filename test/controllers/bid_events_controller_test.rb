require 'test_helper'

class BidEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bid_event = bid_events(:one)
  end

  test "should get index" do
    get bid_events_url
    assert_response :success
  end

  test "should get new" do
    get new_bid_event_url
    assert_response :success
  end

  test "should create bid_event" do
    assert_difference('BidEvent.count') do
      post bid_events_url, params: { bid_event: { auctionable_id: @bid_event.auctionable_id, final: @bid_event.final, participant_id: @bid_event.participant_id } }
    end

    assert_redirected_to bid_event_url(BidEvent.last)
  end

  test "should show bid_event" do
    get bid_event_url(@bid_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_bid_event_url(@bid_event)
    assert_response :success
  end

  test "should update bid_event" do
    patch bid_event_url(@bid_event), params: { bid_event: { auctionable_id: @bid_event.auctionable_id, final: @bid_event.final, participant_id: @bid_event.participant_id } }
    assert_redirected_to bid_event_url(@bid_event)
  end

  test "should destroy bid_event" do
    assert_difference('BidEvent.count', -1) do
      delete bid_event_url(@bid_event)
    end

    assert_redirected_to bid_events_url
  end
end
