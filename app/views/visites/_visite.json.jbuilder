json.extract! visite, :id, :nome_paziente, :cognome_paziente, :telefono_paziente, :giorno_visita, :ora_visita,:luogoVisita :tipo_visita, :created_at, :updated_at
json.url visite_url(visite, format: :json)
