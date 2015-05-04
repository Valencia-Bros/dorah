class ProjectUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates_associated :user
  validates_associated :project
end
