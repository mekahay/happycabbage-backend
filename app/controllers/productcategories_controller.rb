class ProductcategoriesController < ApplicationController
  before_action :set_productcategory, only: [:show, :update, :destroy]

  # GET /productcategories
  def index
    @productcategories = Productcategory.all

    render json: @productcategories
  end

  # GET /productcategories/1
  def show
    render json: @productcategory
  end

  # POST /productcategories
  def create
    @productcategory = Productcategory.new(productcategory_params)

    if @productcategory.save
      render json: @productcategory, status: :created, location: @productcategory
    else
      render json: @productcategory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /productcategories/1
  def update
    if @productcategory.update(productcategory_params)
      render json: @productcategory
    else
      render json: @productcategory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /productcategories/1
  def destroy
    @productcategory.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productcategory
      @productcategory = Productcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productcategory_params
      params.require(:productcategory).permit(:product_id, :category_id)
    end
end
