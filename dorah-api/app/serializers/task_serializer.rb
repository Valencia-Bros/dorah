class TaskSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id,
             :description,
             :level_of_effort,
             :priority,
             :project_id

  has_one :reporter
  has_many :assignees, embed_in_root: false
end
