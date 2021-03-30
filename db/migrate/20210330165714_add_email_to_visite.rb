class AddEmailToVisite < ActiveRecord::Migration[6.1]
  def change
    add_column :visites, :email, :string
  end
end
