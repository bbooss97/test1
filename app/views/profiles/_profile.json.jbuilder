json.extract! profile, :id, :nome, :cognome, :eta, :email, :descrizione, :citta, :specializzazione, :costovisita, :created_at, :updated_at
json.url profile_url(profile, format: :json)
