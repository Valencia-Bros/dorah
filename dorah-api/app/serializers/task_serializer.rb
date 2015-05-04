class TaskSerializer < ActiveModel::Serializer
  attributes :id,
             :description,
             :level_of_effort,
             :priority,
             :project_id

  has_one :reporter, serializer: UserSerializer
  has_many :assignees, serializer: UserSerializer
end
