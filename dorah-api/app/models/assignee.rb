class Assignee < ActiveRecord::Base
  self.table_name = 'users'

  has_many :task_assignees, foreign_key: :user_id
  has_many :tasks, through: :task_assignees
end
