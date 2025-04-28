class PagesController < ApplicationController
  def home
    p "Home page accessed"
    p "Current locale: #{I18n.locale}"
  end

  def about
  end

  def contact
  end
end
