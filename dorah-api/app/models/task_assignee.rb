class TaskAssignee < ActiveRecord::Base
  belongs_to :assignee, class_name: "User"
  belongs_to :task

  validates_associated :task
  validates_associated :assignee
end
