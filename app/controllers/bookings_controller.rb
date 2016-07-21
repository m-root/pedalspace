class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @cyclist = Cyclist.find(session[:id])
    @booking = @cyclist.bookings.build(booking_params)

    if @booking.save
      create_services(params[:service_list])
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

  def destroy
    @booking = Booking.find(params[:id])

    if @booking.destroy
      redirect_to cyclist_bookings_path
    else
      redirect_to cyclist_bookings_path
    end
  end

  protected

  def booking_params
    params.require(:booking).permit(:mechanic_id, :description, :status, :service_list)
  end

  def create_services(service_list)
    for service in service_list
      @requestedservice = @booking.requested_services.build(service_id: service)
      @requestedservice.save
    end
  end

end
