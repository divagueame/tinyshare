class UserUploadsController < ApplicationController
  before_action :set_user_upload, only: %i[show edit update destroy]

  def index
    @user_uploads = UserUpload.all
    @new_user_upload = UserUpload.new
  end

  def show; end

  def new
    @user_upload = UserUpload.new
  end

  def edit; end

  def create
    @user_upload = UserUpload.new(user_upload_params)

    respond_to do |format|
      if @user_upload.save
        format.html { redirect_to user_upload_url(@user_upload), notice: 'User upload was successfully created.' }
        # format.turbo { redirect_to user_upload_url(@user_upload), notice: 'User upload was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user_upload.update(user_upload_params)
        format.html { redirect_to user_upload_url(@user_upload), notice: 'User upload was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_upload.destroy

    respond_to do |format|
      format.html { redirect_to user_uploads_url, notice: 'User upload was successfully destroyed.' }
    end
  end

  private

  def set_user_upload
    @user_upload = UserUpload.find(params[:id])
  end

  def user_upload_params
    params.require(:user_upload).permit(:name, :user_file)
  end
end
