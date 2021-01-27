require "test_helper"

class GetInTouchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @get_in_touch = get_in_touches(:one)
  end

  test "should get index" do
    get get_in_touches_url, as: :json
    assert_response :success
  end

  test "should create get_in_touch" do
    assert_difference('GetInTouch.count') do
      post get_in_touches_url, params: { get_in_touch: { email: @get_in_touch.email, first_name: @get_in_touch.first_name, last_name: @get_in_touch.last_name, message: @get_in_touch.message, subject: @get_in_touch.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show get_in_touch" do
    get get_in_touch_url(@get_in_touch), as: :json
    assert_response :success
  end

  test "should update get_in_touch" do
    patch get_in_touch_url(@get_in_touch), params: { get_in_touch: { email: @get_in_touch.email, first_name: @get_in_touch.first_name, last_name: @get_in_touch.last_name, message: @get_in_touch.message, subject: @get_in_touch.subject } }, as: :json
    assert_response 200
  end

  test "should destroy get_in_touch" do
    assert_difference('GetInTouch.count', -1) do
      delete get_in_touch_url(@get_in_touch), as: :json
    end

    assert_response 204
  end
end
