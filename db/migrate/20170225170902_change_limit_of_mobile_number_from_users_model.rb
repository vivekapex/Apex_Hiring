class ChangeLimitOfMobileNumberFromUsersModel < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :mobile, :integer, limit: 8
  end
end
