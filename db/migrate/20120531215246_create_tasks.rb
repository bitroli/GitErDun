class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.datetime :deadline
      t.string :description
      t.datetime :reminder
      t.boolean :completed
      t.references :user

      t.timestamps
    end
    add_index :tasks, :user_id
  end
end
