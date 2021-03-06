class CyclistsController < ApplicationController

  def new
    @cyclist = Cyclist.new
  end

  def create
    @cyclist = Cyclist.new(cyclist_params)
    @cyclist.avg_rating = 0

    if @cyclist.save
      session[:id] = @cyclist.id
      redirect_to cyclist_path(@cyclist)
    else
      render :new
    end
  end

  def edit
    @cyclist = Cyclist.find(session[:id])
  end

  def update
    @cyclist = Cyclist.find(session[:id])

    if @cyclist.update_attributes(cyclist_params)
      redirect_to cyclist_path(@cyclist)
    else
      render :edit
    end
  end

  def show
    @cyclist = Cyclist.find(params[:id])

    if current_user.is_a?(Cyclist) && current_user.id != @cyclist.id
      redirect_to cyclist_path(current_user)
    end
  end

  def destroy
    @cyclist = Cyclist.find(session[:id])
    if @cyclist.destroy
      redirect_to root_path
    else
      redirect_to cyclist_path(@cyclist)
    end
  end

  protected

  def cyclist_params
    params.require(:cyclist).permit(:first_name, :last_name, :photo, :email, :password, :bio)
  end

end
