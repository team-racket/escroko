class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  before_filter :set_flag

  def configure_permitted_parameters
    parameters = [:first_name, :last_name, :currency_id]
    devise_parameter_sanitizer.for(:account_update) << parameters
    devise_parameter_sanitizer.for(:sign_up) << parameters
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_flag
    @flag = case I18n.locale.to_s
            when 'fr' then 'en'
            when 'en' then 'fr'
            else 'fr'
            end
  end

  private

  def default_url_options(options={})
    { locale: I18n.locale }
  end
end
