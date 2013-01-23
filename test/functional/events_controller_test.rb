require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { campaign_id: @event.campaign_id, campaign_name: @event.campaign_name, customer_id: @event.customer_id, email_address: @event.email_address, email_id: @event.email_id, event_id: @event.event_id, event_type: @event.event_type, subject: @event.subject, timestamp: @event.timestamp }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { campaign_id: @event.campaign_id, campaign_name: @event.campaign_name, customer_id: @event.customer_id, email_address: @event.email_address, email_id: @event.email_id, event_id: @event.event_id, event_type: @event.event_type, subject: @event.subject, timestamp: @event.timestamp }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
