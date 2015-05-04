class Project < ActiveRecord::Base
  belongs_to :owner, class_name: "User", foreign_key: :user_id

  has_many :project_users
  has_many :users, through: :project_users
  has_many :tasks

  validates_associated :owner
  validates_presence_of :name
  validates_length_of :name, in: 1..255, allow_blank: false

  accepts_nested_attributes_for :project_users
end
