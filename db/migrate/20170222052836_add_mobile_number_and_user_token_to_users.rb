class AddMobileNumberAndUserTokenToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :mobile, :string
  	add_column :users, :user_token, :string
  end
end
