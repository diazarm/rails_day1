class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  around_action :switch_locale

  def switch_locale(&action)
    I18n.with_locale(locale_from_header, &action)
  end

  private

  def locale_from_header
    language = request.env['HTTP_ACCEPT_LANGUAGE']
    # Si no hay valor para HTTP_ACCEPT_LANGUAGE, devolvemos un valor predeterminado (por ejemplo, 'es')
    language.present? ? language.scan(/^[a-z]{2}/).first : 'es'
  end
  
end


#Aqui esta la logica real