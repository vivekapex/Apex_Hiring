class ChangeMobileDatatypeFromStringToInteger < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :mobile, 'integer USING CAST(mobile AS integer)'
  end
end
