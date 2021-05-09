class Paziente < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  has_one :profilopazienti

  def self.from_omniauth(auth)

    where(provider: auth.provider, uid: auth.uid).first_or_create do |paziente|
    
      paziente.email = auth.info.email
      paziente.password = Devise.friendly_token[0,20]
    end
    end
    
    def self.new_with_session(params, session) super.tap do |paziente|
    if data = session["devise.facebook_data"] &&  session["devise.facebook_data"]["extra"]["raw_info"]
    
    paziente.email = data["email"] if paziente.email.blank?
    end
    end
    end
end
