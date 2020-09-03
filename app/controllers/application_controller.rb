class ApplicationController < ActionController::Base
  before_action :set_locale
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to root_path, alert: exception.message
  # end

  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def user_employer?
    unless current_user.employer_role == true
      redirect_to root_path
    end
  end

  protected
  def configure_permitted_parameters
    added_attrs = [:fullname, :email, :password, :password_confirmation, :remember_me, :employer_role, company_attributes: [:full_name, :email, :address, :phone, :descr, :link, :total]]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
