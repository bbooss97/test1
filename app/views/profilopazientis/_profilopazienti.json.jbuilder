json.extract! profilopazienti, :id, :nome, :cognome, :eta, :descrizione, :paziente_id, :created_at, :updated_at
json.url profilopazienti_url(profilopazienti, format: :json)
