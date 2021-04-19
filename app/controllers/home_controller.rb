class HomeController < ApplicationController
  def index
    if user_signed_in?
      @profile= Profile.where(user_id: current_user.id)
      if @profile.empty?
        Profile.create(user_id: current_user.id, email:current_user.email)
      end
      
    end

    if paziente_signed_in?
      @profile= Profilopazienti.where(paziente_id: current_paziente.id)
      if @profile.empty?
        Profilopazienti.create(paziente_id: current_paziente.id, email:current_paziente.email)
      end
      
    end
  end
  def about
    
  end
  def admin
    if params[:id]=="admin12345"
      daRimuovere=params[:daRimuovere]
      puts daRimuovere
      Visite.where(email: daRimuovere).try(:delete_all)
      User.where(email: daRimuovere).try(:delete_all)
      Paziente.where(email: daRimuovere).try(:delete_all)
      Profile.where(email: daRimuovere).try(:delete_all)
      
      render html:"ho eliminato se trovato"
    else
      render html:"password sbagliata"
    end
  end


  def profiliPazienti
    
  end
end
