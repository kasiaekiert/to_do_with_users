class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  around_action :switch_locale     
  
  def switch_locale(&action)     
    # I18n.with_locale(:pl, &action)
    locale = if current_user
      current_user.setting.try(:locale) || I18n.default_locale 
    else
      I18n.default_locale
    end

    I18n.with_locale(locale, &action)   
  end
  #http://localhost:3000/?locale=pl 
end
