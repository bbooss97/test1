class AddLuogoVisitaToVisites < ActiveRecord::Migration[6.1]
  def change
    add_column :visites, :luogoVisata, :string
  end
end
