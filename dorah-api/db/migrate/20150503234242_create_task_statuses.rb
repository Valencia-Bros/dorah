class CreateTaskStatuses < ActiveRecord::Migration
  def change
    create_table :task_statuses do |t|
      t.string :name, null: false
      t.references :project, index: true, null: false

      t.timestamps null: false
    end
  end
end
