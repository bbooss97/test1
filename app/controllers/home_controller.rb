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

    if not Administrator.all.exists?
      redirect_to new_administrator_registration_path
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
      Profilopazienti.where(email: daRimuovere).try(:delete_all)
      render html:"ho eliminato se trovato"
    else
      render html:"password sbagliata"
    end
  end


  def profiliPazienti
    @arr=[]
    
    Visite.where(user_id: current_user.id.to_i).all.each do |p|
     @arr.push p.email
    end
    puts @arr
  end
  def prescrizioniPaziente
     @idPaziente=params[:id]
     
  end
  def createprescription
    @prescrizione=Prescription.new
    @idPaziente=params[:id]
  end

  def prenotaunmedico

  end

  def chiediappuntamento
    @b=false
    @id=params[:id]
    @utente=Profilopazienti.find_by(paziente_id: current_paziente.id)
    Visite.create(user_id: @id, nome_paziente: @utente.nome, cognome_paziente: @utente.cognome, email: @utente.email).save
    @b=true
  end

  def richiestediappuntamento

  end

  def gestisciAdministrador
    if not Administrator.all.exists?
      redirect_to new_administrator_registration_path
    end
  end


  def funzioniamministratore
    @medici=User.all
    @pazienti=Paziente.all
  end
  def distruggimedico
    if not administrator_signed_in?
      return
    end
    email=User.find(params[:id]).email
    User.find(params[:id]).delete
    Visite.where(email: email).try(:delete_all) 
    Profile.where(email: email).try(:delete_all)
    redirect_to '/funzioniamministratore'
  end

  def distruggipaziente
    if not administrator_signed_in?
      return
    end
    email=Paziente.find(params[:id]).email
    Paziente.find(params[:id]).delete
    Visite.where(email: email).try(:delete_all)
    Profilopazienti.where(email: email).try(:delete_all)
    redirect_to '/funzioniamministratore'
  end


  def cambiamedico
    if not administrator_signed_in?
      return
    end
    medico=User.find(params[:id])
    medico.password='admin12345'
    medico.password_confirmation='admin12345'
    medico.save
    sign_out(current_administrator)
    redirect_to new_user_session_path
  end
  def cambiapaziente
    if not administrator_signed_in?
      return
    end
    paziente=Paziente.find(params[:id])
    paziente.password='admin12345'
    paziente.password_confirmation='admin12345'
    paziente.save
    sign_out(current_administrator)
    redirect_to new_paziente_session_path
  end

end
