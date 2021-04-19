class FixLuogoVisata < ActiveRecord::Migration[6.1]
  def change
    rename_column :visites, :luogoVisata, :luogoVisita
  end
end
