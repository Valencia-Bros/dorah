class ProjectSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :description

  has_one :owner, serializer: UserSerializer
  has_many :project_users
end
