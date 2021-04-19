class CreateProfilopazientis < ActiveRecord::Migration[6.1]
  def change
    create_table :profilopazientis do |t|
      t.string :nome
      t.string :cognome
      t.integer :eta
      t.string :descrizione
      t.integer :paziente_id

      t.timestamps
    end
  end
end
