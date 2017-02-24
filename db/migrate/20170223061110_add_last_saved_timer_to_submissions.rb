class AddLastSavedTimerToSubmissions < ActiveRecord::Migration[5.0]
  def change
  	add_column :submissions, :last_saved_timer, :datetime
  end
end
