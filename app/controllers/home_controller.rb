class HomeController < ApplicationController
  def index
    
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
       
      
      render html:"ho eliminato se trovato"
    else
      render html:"password sbagliata"
    end
  end
end
