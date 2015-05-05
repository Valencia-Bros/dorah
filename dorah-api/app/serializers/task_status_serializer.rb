class TaskStatusSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id,
             :name,
             :project_id

end
