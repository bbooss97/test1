class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_path 
    end
    def current_auth_resource
        if administrator_signed_in?
          current_administrator
        elsif user_signed_in?
          current_user
        elsif paziente_signed_in?
            current_paziente
        end
      end
    
      def current_ability
          @current_ability  = Ability.new(current_auth_resource)
      end
end
