class CreateUserSubjects < ActiveRecord::Migration
  def change
    create_table :user_subjects do |t|
      t.integer :user_id
      t.integer :subject_id
      t.date :start_date
      t.timestamps null: false
    end
    add_index :user_subjects, :user_id
    add_index :user_subjects, :subject_id
  end
end
