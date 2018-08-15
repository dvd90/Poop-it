class ToiletsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_toilet, only: [:show, :edit, :update, :destroy]

  def index
    session[:lat], session[:lng] = params[:lat], params[:lng]
    @toilets = policy_scope(Toilet.near([params[:lat], params[:lng]], 0.7) )

    @markers = [
      {
        lat: params[:lat],
        lng: params[:lng],
      }
    ]

    @toilets.inject(@markers) do |res, toilet|
      res << {
        lat: toilet.latitude,
        lng: toilet.longitude
      }
    end
  end

  def dashboard
    @user = current_user
    authorize @user
    @bookings = @user.bookings
    @toilets = @user.toilets
    render "#{current_user.class.to_s.downcase}_dashboard"
    authorize @bookings
    authorize @toilets
  end

  def show
    @toilet = Toilet.find(params[:id])
    authorize @toilet
    @booking = Booking.new
    @booking.toilet = @toilet
  end

  def new
    @toilet = Toilet.new
    authorize @toilet
  end

  def create        # POST
    @toilet = Toilet.new(toilet_params)
    authorize @toilet
    @toilet.owner = current_user
    if @toilet.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @toilet = Toilet.find(params[:id])
    authorize @toilet
  end

  def update
    @toilet = Toilet.find(params[:id])
    authorize @toilet
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
