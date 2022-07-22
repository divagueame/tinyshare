require "test_helper"

class UserUploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_upload = user_uploads(:one)
  end

  test "should get index" do
    get user_uploads_url
    assert_response :success
  end

  test "should get new" do
    get new_user_upload_url
    assert_response :success
  end

  test "should create user_upload" do
    assert_difference("UserUpload.count") do
      post user_uploads_url, params: { user_upload: { name: @user_upload.name } }
    end

    assert_redirected_to user_upload_url(UserUpload.last)
  end

  test "should show user_upload" do
    get user_upload_url(@user_upload)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_upload_url(@user_upload)
    assert_response :success
  end

  test "should update user_upload" do
    patch user_upload_url(@user_upload), params: { user_upload: { name: @user_upload.name } }
    assert_redirected_to user_upload_url(@user_upload)
  end

  test "should destroy user_upload" do
    assert_difference("UserUpload.count", -1) do
      delete user_upload_url(@user_upload)
    end

    assert_redirected_to user_uploads_url
  end
end
