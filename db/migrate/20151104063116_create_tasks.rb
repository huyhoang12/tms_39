class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :subject_id
      t.timestamps null: false
    end
    add_index :tasks, :subject_id
  end
end
