class CreateTaskAssignees < ActiveRecord::Migration
  def change
    create_table :task_assignees do |t|
      t.references :assignee, index: true, null: false
      t.references :task, index: true, null: false

      t.timestamps null: false
    end
  end
end
