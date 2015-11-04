class CreateUserSubjectTasks < ActiveRecord::Migration
  def change
    create_table :user_subject_tasks do |t|
    	t.string :status
    	t.integer :user_subject_id
    	t.integer :user_id
    	t.integer :task_id
      t.timestamps null: false
    end
    add_index :user_subject_tasks, :user_id
    add_index :user_subject_tasks, :user_subject_id
    add_index :user_subject_tasks, :task_id
  end
end
