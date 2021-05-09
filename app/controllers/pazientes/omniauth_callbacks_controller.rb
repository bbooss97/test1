class Pazientes::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def facebook
    # You need to implement the method below in your model (e.g. app/models/paziente.rb)
    @paziente = Paziente.from_omniauth(request.env["omniauth.auth"])
    if @paziente.persisted?
    sign_in_and_redirect @paziente, :event => :authentication
    set_flash_message(:notice, :success, :kind => "Facebook") else
    session["devise.facebook_data"] = request.env["omniauth.auth"]
    redirect_to new_paziente_registration_url
    end
    end
    
    def failure
    redirect_to root_path
    end
    end