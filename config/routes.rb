Rails.application.routes.draw do

  devise_for :administrators, controllers: { registrations: 'administrator/registrations' }

  resources :prescriptions
  resources :profilopazientis
  resources :profiles
  
  devise_for :users
  resources :visites
  get 'home/index' , to:'home#index'
  root to: 'home#index'
  devise_for :pazientes, :controllers => { :omniauth_callbacks => "pazientes/omniauth_callbacks" }
  
 # get 'admin/:id/:daRimuovere' ,to:"home#admin", :constraints => { daRimuovere: /[^\/]+/ }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/profiliPazienti',to:'home#profiliPazienti'
  get '/prescrizioniPaziente/:id',to:'home#prescrizioniPaziente'
  get '/createprescription/:id',to:'home#createprescription'
  get '/prenotaunmedico',to:'home#prenotaunmedico'
  get '/chiediappuntamento/:id',to:'home#chiediappuntamento'
  get 'richiestediappuntamento',to:'home#richiestediappuntamento'
  get '/funzioniamministratore',to:'home#funzioniamministratore'
  get '/distruggimedico/:id',to:'home#distruggimedico'
  get '/distruggipaziente/:id',to:'home#distruggipaziente'
  get '/cambiamedico/:id',to:'home#cambiamedico'
  get '/cambiapaziente/:id',to:'home#cambiapaziente'
  
end
