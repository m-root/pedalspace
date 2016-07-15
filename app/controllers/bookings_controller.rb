class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @cyclist = Cyclist.find(session[:id])
    @booking = @cyclist.bookings.build(booking_params)
    @booking.status = "Pending"

    if @booking.save
      create_services(params[:services])
      redirect_to cyclist_bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update_attributes(booking_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def delete
    @booking = Booking.find(params[:id])

    if @booking.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  protected

  def booking_params
    params.require(:booking).permit(:mechanic_id, :description, :status)
  end

  def create_services(service_list)
    for service in service_list
      @booking.requested_services.build(booking_id: @booking.id, service_id: service)
    end
  end

end
