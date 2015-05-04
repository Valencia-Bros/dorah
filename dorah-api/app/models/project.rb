class Project < ActiveRecord::Base
  belongs_to :user

  has_many :project_users
  has_many :users, through: :project_users
  has_many :tasks

  validates_associated :user
  validates_presence_of :name
  validates_length_of :name, in: 1..255, allow_blank: false
end
