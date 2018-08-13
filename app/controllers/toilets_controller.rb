class ToiletsController < ApplicationController
    before_action :set_toilet, only: [:show, :edit, :update, :destroy]
  def index         # GET
    @toilets = Toilet.all
  end

  def dashboard
    render "#{current_user.class.to_s.downcase}_dashboard"
  end

  def show          # GET
  end

  def new           # GET
    @toilet = Toilet.new
  end

  def create        # POST
    @toilet = Toilet.new(toilet_params)
    if @toilet.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit          # GET
  end

  def update        # PATCH
    if @toilet.update(toilet_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy       # DELETE
    @toilet.destroy
  end

  private

  def set_toilet
    @toilet = Toilet.find(params[:id])
  end

  def toilet_params
    params.require(:toilet).permit(:title, :picture, :location, :description, :price)
  end
end
