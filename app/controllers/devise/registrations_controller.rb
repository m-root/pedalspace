class Devise::RegistrationsController < DeviseController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.avg_rating = 0

    if @user.save
      session[:id] = @user.id
      redirect_to new_user_session_path, notice: "Account created.  Please login to continue."
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:type, :first_name, :last_name, :photo, :email, :password, :bio, :street_address, :city, :postal_code)
  end

end