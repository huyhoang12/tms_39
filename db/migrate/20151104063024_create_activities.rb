class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :action
      t.integer :user_id
      t.integer :target_id
      t.timestamps null: false
    end
    add_index :activities, :user_id
    add_index :activities, :target_id
  end
end
