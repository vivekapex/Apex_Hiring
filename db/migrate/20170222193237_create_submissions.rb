class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
    	t.integer :user_id
    	t.text   :question_one
    	t.text   :response_one
    	t.text   :question_two
    	t.text   :response_two
    	t.text   :question_three
    	t.text   :response_three
    	t.text   :question_four
    	t.text   :response_four

    	
    	t.datetime :start_timer
    	t.datetime :end_timer
    	t.datetime :timer_countdown
    	t.boolean :finished
    	t.timestamps
    end
  end
end
