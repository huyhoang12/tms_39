class CreateCouserSubjects < ActiveRecord::Migration
  def change
    create_table :couser_subjects do |t|
      t.integer :couser_id
      t.integer :subject_id
      t.timestamps null: false
    end
    add_index :couser_subjects, :couser_id
    add_index :couser_subjects, :subject_id
  end
end
