class MechanicsController < ApplicationController

  def index
    if params[:city].present? || params[:service].present? || params[:price].present?
      @mechanics = Mechanic.search(search_params)
    else
      @mechanics = Mechanic.all
    end
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
    @mechanic = Mechanic.find(session[:id])
  end

  def update
    @mechanic = Mechanic.find(session[:id])

    if @mechanic.update_attributes(mechanic_params)
      redirect_to mechanic_path
    else
      render :edit
    end
  end

  def show
    @mechanic = Mechanic.find(params[:id])
    if !current_user.present?
      flash[:notice] = "You must log in to view profiles"
      redirect_to pages_home_path
    end
    if current_user.is_a?(Mechanic) && current_user.id != @mechanic.id
      redirect_to mechanic_path(current_user)
    end
  end

  def destroy
    @mechanic = Mechanic.find(session[:id])
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
    params.permit(:city, :service, :price)
  end

end
