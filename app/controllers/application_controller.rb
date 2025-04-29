class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  around_action :set_locale

  def change_locale
    locale = params[:locale]
    if I18n.available_locales.include?(locale.to_sym)
      session[:locale] = locale
    end

    redirect_back(fallback_location: root_path)
  end

  private
  def set_locale(&action)
    locale = session[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
    session[:locale] = locale if session[:locale].nil?
  end
end
