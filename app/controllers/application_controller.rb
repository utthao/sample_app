class ApplicationController < ActionController::Base
  before_action :set_locale
  include SessionsHelper

  private

  def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
  {locale: I18n.locale}
  end
  protect_from_forgery with: :exception
end
