class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.toilet = Toilet.find(params[:toilet_id])
    @booking.renter = current_user
    @booking.owner = @booking.toilet.owner
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:bookings).permit(:review, :rating)
  end
end
