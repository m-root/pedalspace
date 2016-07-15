class ServicesController < ApplicationController
  def index
  end

  def new
    @service = Service.new
  end

  def create
    @mechanic = Mechanic.find(session[:id])
    @service = @mechanic.services.build(service_params)

    if @service.save
      redirect_to mechanic_services_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def delete
  end

  protected

  def service_params
    params.require(:service).permit(:service_name, :service_price)
  end

end
