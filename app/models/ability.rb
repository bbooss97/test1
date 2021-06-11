

class Ability
  include CanCan::Ability
#:read, :create, :update and :destroy
  def initialize(model)
    case model
    when Administrator
      can :manage, :all
    when User
      can [:create], [Visite,Prescription,Profile]
      can [:read],[Visite,Prescription,Profile,Profilopazienti]
      can [:destroy],[Visite,Prescription,Profile]
      can [:update],[Visite,Prescription,Profile]
     
    when Paziente
      can [:create], [Prescription,ProfiloPazienti]
      can [:read],[Visite,Prescription,Profile,ProfiloPazienti]
      can [:destroy],[Visite,Prescription,ProfiloPazienti]
      can [:update],[Prescription,ProfiloPazienti]
    else
      
    end
  end
end