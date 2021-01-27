class GetInTouchesController < ApplicationController
  before_action :set_get_in_touch, only: [:show, :update, :destroy]

  # GET /get_in_touches
  def index
    @get_in_touches = GetInTouch.all

    render json: @get_in_touches
  end

  # GET /get_in_touches/1
  def show
    render json: @get_in_touch
  end

  # POST /get_in_touches
  def create
    @get_in_touch = GetInTouch.new(get_in_touch_params)

    if @get_in_touch.save
      render json: @get_in_touch, status: :created, location: @get_in_touch
    else
      render json: @get_in_touch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /get_in_touches/1
  def update
    if @get_in_touch.update(get_in_touch_params)
      render json: @get_in_touch
    else
      render json: @get_in_touch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /get_in_touches/1
  def destroy
    @get_in_touch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_get_in_touch
      @get_in_touch = GetInTouch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def get_in_touch_params
      params.require(:get_in_touch).permit(:first_name, :last_name, :email, :subject, :message)
    end
end
