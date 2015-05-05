class TaskSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id,
             :description,
             :level_of_effort,
             :priority,
             :fruit_hang_height,
             :project_id,
             :task_status_id

  has_one :reporter
  has_many :assignees, embed_in_root: false
end
