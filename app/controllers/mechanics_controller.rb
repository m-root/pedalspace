class MechanicsController < ApplicationController

  def index
    # Commenting out original functionality to make it easier to build business logic views
    # @mechanics = Mechanic.search(search_params)
    @mechanics = Mechanic.all
  end

  def new
    @mechanic = Mechanic.new
  end

  def create
    @mechanic = Mechanic.new(mechanic_params)
    @mechanic.avg_rating = 0

    if @mechanic.save
      session[:id] = @mechanic.id
      redirect_to mechanic_path
    else
      render :new
    end
  end

  def edit
    @mechanic = Mechanic.find(params[:id])
  end

  def update
    @mechanic = Mechanic.find(params[:id])

    if @mechanic.update_attributes(mechanic_params)
      redirect_to mechanic_path
    else
      render :edit
    end
  end

  def show
    @mechanic = Mechanic.find(params[:id])
  end

  def delete
    @mechanic = Mechanic.find(params[:id])
    if @mechanic.destroy
      redirect_to mechanics_path
    else
      redirect_to mechanic_path
    end
  end

  protected

  def mechanic_params
    params.require(:mechanic).permit(:first_name, :last_name, :photo, :email, :password, :bio, :street_address, :city, :postal_code)
  end

  def search_params
    params.permit(:first_name, :last_name, :city)
  end

end
