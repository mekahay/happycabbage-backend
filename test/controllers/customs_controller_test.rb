require "test_helper"

class CustomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom = customs(:one)
  end

  test "should get index" do
    get customs_url, as: :json
    assert_response :success
  end

  test "should create custom" do
    assert_difference('Custom.count') do
      post customs_url, params: { custom: { delivery_date: @custom.delivery_date, email: @custom.email, first_name: @custom.first_name, last_name: @custom.last_name, message: @custom.message, price_range: @custom.price_range, subject: @custom.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show custom" do
    get custom_url(@custom), as: :json
    assert_response :success
  end

  test "should update custom" do
    patch custom_url(@custom), params: { custom: { delivery_date: @custom.delivery_date, email: @custom.email, first_name: @custom.first_name, last_name: @custom.last_name, message: @custom.message, price_range: @custom.price_range, subject: @custom.subject } }, as: :json
    assert_response 200
  end

  test "should destroy custom" do
    assert_difference('Custom.count', -1) do
      delete custom_url(@custom), as: :json
    end

    assert_response 204
  end
end
