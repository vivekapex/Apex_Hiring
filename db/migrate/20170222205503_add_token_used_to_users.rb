class AddTokenUsedToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :token_used, :boolean
  end
end
