class HomeController < ApplicationController
  def index
    
  end
  def about
    
  end
  def admin
    if params[:id]=="admin12345"
      daRimuovere=params[:daRimuovere]
      Visite.find_by(id: daRimuovere).try(:destroy)
      render html:"ho eliminato se trovato"
    else
      render html:"password sbagliata"
    end
  end
end
