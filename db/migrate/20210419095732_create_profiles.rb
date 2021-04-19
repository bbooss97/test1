class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :nome
      t.string :cognome
      t.integer :eta
      t.string :email
      t.string :descrizione
      t.string :citta
      t.string :specializzazione
      t.integer :costovisita

      t.timestamps
    end
  end
end
