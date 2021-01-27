class CorporatesController < ApplicationController
  before_action :set_corporate, only: [:show, :update, :destroy]

  # GET /corporates
  def index
    @corporates = Corporate.all

    render json: @corporates
  end

  # GET /corporates/1
  def show
    render json: @corporate
  end

  # POST /corporates
  def create
    @corporate = Corporate.new(corporate_params)

    if @corporate.save
      render json: @corporate, status: :created, location: @corporate
    else
      render json: @corporate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /corporates/1
  def update
    if @corporate.update(corporate_params)
      render json: @corporate
    else
      render json: @corporate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /corporates/1
  def destroy
    @corporate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corporate
      @corporate = Corporate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def corporate_params
      params.require(:corporate).permit(:first_name, :last_name, :email, :subject, :message)
    end
end
