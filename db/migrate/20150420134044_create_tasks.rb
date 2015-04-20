class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.belongs_to :user

      t.timestamps null: false
    end
    add_index :tasks, :user_id
  end
end
