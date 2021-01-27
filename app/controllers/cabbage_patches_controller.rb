class CabbagePatchesController < ApplicationController
  before_action :set_cabbage_patch, only: [:show, :update, :destroy]

  # GET /cabbage_patches
  def index
    @cabbage_patches = CabbagePatch.all

    render json: @cabbage_patches
  end

  # GET /cabbage_patches/1
  def show
    render json: @cabbage_patch
  end

  # POST /cabbage_patches
  def create
    @cabbage_patch = CabbagePatch.new(cabbage_patch_params)

    if @cabbage_patch.save
      render json: @cabbage_patch, status: :created, location: @cabbage_patch
    else
      render json: @cabbage_patch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cabbage_patches/1
  def update
    if @cabbage_patch.update(cabbage_patch_params)
      render json: @cabbage_patch
    else
      render json: @cabbage_patch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cabbage_patches/1
  def destroy
    @cabbage_patch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabbage_patch
      @cabbage_patch = CabbagePatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cabbage_patch_params
      params.require(:cabbage_patch).permit(:date, :subject, :summery, :message, :picture1, :picture2, :picture3, :picture4, :picture5, :picture6, :picture7, :picture8)
    end
end
