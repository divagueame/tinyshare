class UserUploadsController < ApplicationController
  before_action :set_user_upload, only: %i[ show edit update destroy ]

  # GET /user_uploads or /user_uploads.json
  def index
    @user_uploads = UserUpload.all
  end

  # GET /user_uploads/1 or /user_uploads/1.json
  def show
  end

  # GET /user_uploads/new
  def new
    @user_upload = UserUpload.new
  end

  # GET /user_uploads/1/edit
  def edit
  end

  # POST /user_uploads or /user_uploads.json
  def create
    @user_upload = UserUpload.new(user_upload_params)

    respond_to do |format|
      if @user_upload.save
        format.html { redirect_to user_upload_url(@user_upload), notice: "User upload was successfully created." }
        format.json { render :show, status: :created, location: @user_upload }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_uploads/1 or /user_uploads/1.json
  def update
    respond_to do |format|
      if @user_upload.update(user_upload_params)
        format.html { redirect_to user_upload_url(@user_upload), notice: "User upload was successfully updated." }
        format.json { render :show, status: :ok, location: @user_upload }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_uploads/1 or /user_uploads/1.json
  def destroy
    @user_upload.destroy

    respond_to do |format|
      format.html { redirect_to user_uploads_url, notice: "User upload was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_upload
      @user_upload = UserUpload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_upload_params
      params.require(:user_upload).permit(:name, :user_file)
    end
end
