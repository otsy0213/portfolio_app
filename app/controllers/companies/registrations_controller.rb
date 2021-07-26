# frozen_string_literal: true

class Companies::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /companies/sign_up
  def new
    @company = Company.new
  end

  # POST /companies
  def create
    super
  end

  # GET /companies/edit
  # def edit
  #   super
  # end

  # PUT /companies
  # def update
  #   super
  # end

  # DELETE /companies
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  def after_sign_up_path_for(resources)
    new_member_registration_path
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for
    new_member_registration_path
  end
end
