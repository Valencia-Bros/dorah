class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :reporter, class_name: "User"

  has_many :task_assignees
  has_many :assignees, through: :task_assignees, class_name: "User"

  validates_presence_of :description
  validates_length_of :description, in: 1..255
  validates_numericality_of :priority, allow_blank: true
  validates_numericality_of :level_of_effort, allow_blank: true
  validates_associated :reporter
  validates_associated :project

  accepts_nested_attributes_for :assignees
end
