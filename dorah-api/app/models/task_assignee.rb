class TaskAssignee < ActiveRecord::Base
  belongs_to :assignee, foreign_key: :user_id
  belongs_to :task

  validates_associated :task
  validates_associated :assignee
end
