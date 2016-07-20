class ServicesController < ApplicationController

  def new
    @service = Service.new
  end

  def create
    @mechanic = Mechanic.find(session[:id])
    @service = @mechanic.services.build(service_params)

    if @service.save
      redirect_to "/mechanics/#{@mechanic.id}"
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    if @service.update_attributes(service_params)
      redirect_to "/mechanics/#{@mechanic.id}"
    else
      render :edit
    end
  end

  def show
    @service = Service.find(params[:id])
  end

  def destroy
    @mechanic = Mechanic.find(session[:id])
    @service = Service.find(params[:id])

    if @service.destroy
      redirect_to "/mechanics/#{@mechanic.id}"
    else
      redirect_to "/mechanics/#{@mechanic.id}"
    end
  end

  protected

  def service_params
    params.require(:service).permit(:service_name, :service_price)
  end

end
