class AddTagToTask < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.references :tag
    end
  end
end
