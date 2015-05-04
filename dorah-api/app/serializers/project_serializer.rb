class ProjectSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :description

  has_many :project_users
end
