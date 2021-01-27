require "test_helper"

class CorporatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corporate = corporates(:one)
  end

  test "should get index" do
    get corporates_url, as: :json
    assert_response :success
  end

  test "should create corporate" do
    assert_difference('Corporate.count') do
      post corporates_url, params: { corporate: { email: @corporate.email, first_name: @corporate.first_name, last_name: @corporate.last_name, message: @corporate.message, subject: @corporate.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show corporate" do
    get corporate_url(@corporate), as: :json
    assert_response :success
  end

  test "should update corporate" do
    patch corporate_url(@corporate), params: { corporate: { email: @corporate.email, first_name: @corporate.first_name, last_name: @corporate.last_name, message: @corporate.message, subject: @corporate.subject } }, as: :json
    assert_response 200
  end

  test "should destroy corporate" do
    assert_difference('Corporate.count', -1) do
      delete corporate_url(@corporate), as: :json
    end

    assert_response 204
  end
end
