class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description, null: false
      t.integer :priority
      t.integer :level_of_effort
      t.references :reporter, index: true, null: false
      t.references :project, index: true, null: false

      t.timestamps null: false
    end
  end
end
