class CreateTodo < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.boolean :is_complete?, null: false
      t.timestamps
    end
  end
end
