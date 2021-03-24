class RemoveGiornoVisitaFromVisites < ActiveRecord::Migration[6.1]
  def change
    remove_column :visites, :giorno_visita, :date
  end
end
