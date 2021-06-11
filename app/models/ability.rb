

class Ability
  include CanCan::Ability
#:read, :create, :update and :destroy
  def initialize(user)
    # case model
    # when Administrator
    #   can :manage, :all
    # when User
    #   can [:create], [Visite,Prescription,Profile]
    #   can [:read],[Visite,Prescription,Profile,Profilopazienti]
    #   can [:destroy],[Visite,Prescription]
    #   can [:update],[Visite,Prescription,Profile]
     
    # when Paziente
    #   can :manage, :all
    #   can [:create], [ProfiloPazienti]
    #   can [:read],[Visite,Prescription,Profile,ProfiloPazienti]
    #   can [:destroy],[Visite,Prescription]
    #   can [:update],[ProfiloPazienti]
    # else
      
    # end
     #can :manage, :all


     if user.is_a?(Administrator)
      can :manage, :all
    elsif user.is_a?(User)
      can [:create], [Visite,Prescription,Profile]
      can [:read],[Visite,Prescription,Profile,Profilopazienti]
      can [:destroy],[Visite,Prescription]
      can [:update],[Visite,Prescription,Profile]
    elsif user.is_a?(Paziente)
      can [:create], [Profilopazienti]
      can [:read],[Visite,Prescription,Profile,Profilopazienti]
      can [:destroy],[Visite,Prescription]
      can [:update],[Profilopazienti]
    else

    end
  
  end
end