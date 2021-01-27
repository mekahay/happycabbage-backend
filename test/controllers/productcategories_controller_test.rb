require "test_helper"

class ProductcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productcategory = productcategories(:one)
  end

  test "should get index" do
    get productcategories_url, as: :json
    assert_response :success
  end

  test "should create productcategory" do
    assert_difference('Productcategory.count') do
      post productcategories_url, params: { productcategory: { category_id: @productcategory.category_id, product_id: @productcategory.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show productcategory" do
    get productcategory_url(@productcategory), as: :json
    assert_response :success
  end

  test "should update productcategory" do
    patch productcategory_url(@productcategory), params: { productcategory: { category_id: @productcategory.category_id, product_id: @productcategory.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy productcategory" do
    assert_difference('Productcategory.count', -1) do
      delete productcategory_url(@productcategory), as: :json
    end

    assert_response 204
  end
end
