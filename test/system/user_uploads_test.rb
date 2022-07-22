require "application_system_test_case"

class UserUploadsTest < ApplicationSystemTestCase
  setup do
    @user_upload = user_uploads(:one)
  end

  test "visiting the index" do
    visit user_uploads_url
    assert_selector "h1", text: "User uploads"
  end

  test "should create user upload" do
    visit user_uploads_url
    click_on "New user upload"

    fill_in "Name", with: @user_upload.name
    click_on "Create User upload"

    assert_text "User upload was successfully created"
    click_on "Back"
  end

  test "should update User upload" do
    visit user_upload_url(@user_upload)
    click_on "Edit this user upload", match: :first

    fill_in "Name", with: @user_upload.name
    click_on "Update User upload"

    assert_text "User upload was successfully updated"
    click_on "Back"
  end

  test "should destroy User upload" do
    visit user_upload_url(@user_upload)
    click_on "Destroy this user upload", match: :first

    assert_text "User upload was successfully destroyed"
  end
end
