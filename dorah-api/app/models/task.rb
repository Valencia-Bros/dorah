class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :reporter, class_name: "User"

  has_many :task_assignees
  has_many :assignees, through: :task_assignees, class_name: "User"

  validates_presence_of :description
  validates_length_of :description, in: 1..255
  validates_numericality_of :priority, allow_blank: true
  validates_numericality_of :level_of_effort, allow_blank: true
  validates_associated :reporter
  validates_associated :project

  accepts_nested_attributes_for :assignees

  concerning :FruitHangHeight do
    included do

      def fruit_hang_height
        #C=LOE
        #B=Priority
        #=IF(FLOOR((C2/Abs(B2 - 4.9))*100) = 0, 9001, FLOOR((C2/Abs(B2 - 4.9))*100))
        # Version 1
        # ((self.level_of_effort / (self.priority - 4.9).abs ) * 100).floor
        # Version 2
        ((self.level_of_effort / (self.priority - self.project.max_priority).abs ) * 100).floor
      end

    end
  end
end
