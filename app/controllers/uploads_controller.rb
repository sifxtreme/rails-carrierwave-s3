class UploadsController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy]

  # GET /uploads
  def index
    @uploads = Upload.all
  end

  # GET /uploads/1
  def show
  end

  # GET /uploads/new
  def new
    @upload = Upload.new
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads
  def create
    @upload = Upload.new(post_upload_params)

    if @upload.save
      redirect_to @upload, notice: 'Upload was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /uploads/1
  def update
    if @upload.update(post_upload_params)
      redirect_to @upload, notice: 'Upload attachment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /uploads/1
  def destroy
    @upload.destroy
    redirect_to uploads_url, notice: 'Upload was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @upload = Upload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_upload_params
      params.require(:upload).permit(:name)
    end
end
