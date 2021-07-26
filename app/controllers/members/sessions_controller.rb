# frozen_string_literal: true

class Members::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /members/sign_in
  def new
    super
  end

  # POST /members/sign_in
  def create
    super
  end

  # DELETE /members/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
