class ChangeDefaultValueOfResponses < ActiveRecord::Migration[5.0]
  def change
  	change_column :submissions, :response_one, :text, :default => "You have not submitted any response"
  	change_column :submissions, :response_two, :text, :default => "You have not submitted any response"
  	change_column :submissions, :response_three, :text, :default => "You have not submitted any response"
  	change_column :submissions, :response_four, :text, :default => "You have not submitted any response"
  end
end
