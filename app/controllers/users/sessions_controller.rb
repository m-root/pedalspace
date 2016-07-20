class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

  # GET /users/sign_in
  # def new
  #   super
  # end

  # POST /users/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)

    if resource.save && resource.is_a?(Cyclist)
      session[:id] = resource.id
      redirect_to "/cyclists/#{resource.id}"
    elsif resource.save && resource.is_a?(Mechanic)
      session[:id] = resource.id
      redirect_to "/mechanics/#{resource.id}"     
    else
      render :new
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
