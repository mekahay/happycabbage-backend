require "test_helper"

class CabbagePatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cabbage_patch = cabbage_patches(:one)
  end

  test "should get index" do
    get cabbage_patches_url, as: :json
    assert_response :success
  end

  test "should create cabbage_patch" do
    assert_difference('CabbagePatch.count') do
      post cabbage_patches_url, params: { cabbage_patch: { date: @cabbage_patch.date, message: @cabbage_patch.message, picture1: @cabbage_patch.picture1, picture2: @cabbage_patch.picture2, picture3: @cabbage_patch.picture3, picture4: @cabbage_patch.picture4, picture5: @cabbage_patch.picture5, picture6: @cabbage_patch.picture6, picture7: @cabbage_patch.picture7, picture8: @cabbage_patch.picture8, subject: @cabbage_patch.subject, summery: @cabbage_patch.summery } }, as: :json
    end

    assert_response 201
  end

  test "should show cabbage_patch" do
    get cabbage_patch_url(@cabbage_patch), as: :json
    assert_response :success
  end

  test "should update cabbage_patch" do
    patch cabbage_patch_url(@cabbage_patch), params: { cabbage_patch: { date: @cabbage_patch.date, message: @cabbage_patch.message, picture1: @cabbage_patch.picture1, picture2: @cabbage_patch.picture2, picture3: @cabbage_patch.picture3, picture4: @cabbage_patch.picture4, picture5: @cabbage_patch.picture5, picture6: @cabbage_patch.picture6, picture7: @cabbage_patch.picture7, picture8: @cabbage_patch.picture8, subject: @cabbage_patch.subject, summery: @cabbage_patch.summery } }, as: :json
    assert_response 200
  end

  test "should destroy cabbage_patch" do
    assert_difference('CabbagePatch.count', -1) do
      delete cabbage_patch_url(@cabbage_patch), as: :json
    end

    assert_response 204
  end
end
