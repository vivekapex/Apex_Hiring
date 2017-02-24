class ChangeDefaultValueToEmptyStringOfResponses < ActiveRecord::Migration[5.0]
  def change
  	change_column :submissions, :response_one, :text, :default => ""
  	change_column :submissions, :response_two, :text, :default => ""
  	change_column :submissions, :response_three, :text, :default => ""
  	change_column :submissions, :response_four, :text, :default => ""
  end
end
