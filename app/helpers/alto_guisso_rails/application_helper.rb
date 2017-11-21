module AltoGuissoRails
  module ApplicationHelper
    def guisso_sign_in_path_for(mapping)
      if Guisso.enabled?
        method = "omniauth_authorize_path"
        send method, mapping, :instedd
      else
        new_session_path mapping
      end
    end

    def guisso_sign_up_path_for(mapping)
      if Guisso.enabled?
        method = "omniauth_authorize_path"
        send method, mapping, :instedd, signup: true
      else
        new_registration_path mapping
      end
    end

    def guisso_sign_out_path_for(mapping, options = {})
      ActiveSupport::Deprecation.warn "Replace calls to 'guisso_sign_out_path_for' with 'destroy_session_path'"
      destroy_session_path(mapping)
    end

    def guisso_settings_path(mapping)
      if Guisso.enabled?
         Guisso.settings_url
      else
        edit_registration_path(mapping)
      end
    end
  end
end
