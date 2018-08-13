class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    authorize @booking
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

  private

  def booking_params
    params.require(:bookings).permit(:review, :rating)
  end
end
