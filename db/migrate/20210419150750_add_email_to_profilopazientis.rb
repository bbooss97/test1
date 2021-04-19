class AddEmailToProfilopazientis < ActiveRecord::Migration[6.1]
  def change
    add_column :profilopazientis, :email, :string
  end
end
