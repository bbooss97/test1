class CreateVisites < ActiveRecord::Migration[6.1]
  def change
    create_table :visites do |t|
      t.string :nome_paziente
      t.string :cognome_paziente
      t.string :telefono_paziente
      t.date :giorno_visita
      t.datetime :ora_visita
      t.string :tipo_visita

      t.timestamps
    end
  end
end
