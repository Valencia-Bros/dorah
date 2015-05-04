class ProjectSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id,
             :name,
             :description

  has_one :owner
  has_many :project_users, embed_in_root: false
  has_many :tasks, embed_in_root: false
end
