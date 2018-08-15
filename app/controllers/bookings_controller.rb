class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    authorize @booking
    @markers = [
      {
        lat: @booking.toilet.latitude,
        lng: @booking.toilet.longitude,
      }
    ]
  end

  def create
    @booking = Booking.new
    authorize @booking
    @booking.toilet = Toilet.find(params[:toilet_id])
    @booking.renter = current_user
    @booking.owner = @booking.toilet.owner
    if @booking.save
      redirect_to toilet_booking_path(@booking.toilet, @booking)
    else
      render :show
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:review, :rating)
  end
end
