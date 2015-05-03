class CreateProjectUsers < ActiveRecord::Migration
  def change
    create_table :project_users do |t|
      t.references :user, index: true, null: false
      t.references :project, index: true, null: false

      t.timestamps null: false
    end
  end
end
