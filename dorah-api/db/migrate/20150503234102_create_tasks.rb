class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description, null: false
      t.integer :priority, null: false, default: 0
      t.integer :level_of_effort, null: false, default: 0
      t.references :user, index: true, null: false
      t.references :project, index: true, null: false

      t.timestamps null: false
    end
  end
end
