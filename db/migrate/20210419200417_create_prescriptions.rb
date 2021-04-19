class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.string :medicinale
      t.string :descrizioneUtilizzo

      t.timestamps
    end
  end
end
