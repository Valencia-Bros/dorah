class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :reporter, class_name: "User", foreign_key: :user_id

  has_many :task_assignees
  has_many :assignees, through: :task_assignees
end
