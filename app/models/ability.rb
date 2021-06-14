

class Ability
  include CanCan::Ability
#:read, :create, :update and :destroy
  def initialize(user)
   
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