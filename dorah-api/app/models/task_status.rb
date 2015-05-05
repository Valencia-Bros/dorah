class TaskStatus < ActiveRecord::Base
  belongs_to :project, inverse_of: :task_status

  has_many :tasks, inverse_of: :task_status
  
  validates :name, presence: true
  validates :project, presence: true
end
