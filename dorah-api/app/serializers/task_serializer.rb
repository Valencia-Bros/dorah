class TaskSerializer < ActiveModel::Serializer
  attributes :id,
             :description,
             :level_of_effort,
             :priority

  has_one :reporter, serializer: ReporterSerializer
  has_many :assignees, serializer: AssigneeSerializer
end
