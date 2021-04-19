class AddPazienteIdToPrescription < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :paziente_id, :string
  end
end
