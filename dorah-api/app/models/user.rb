class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :validatable

  has_many :projects
  has_many :project_users, through: :projects

  has_many :task_assignees
  has_many :tasks, through: :task_assignees

  concerning :DeviseEmberAuth do
    included do
      before_save :ensure_authentication_token

      def ensure_authentication_token
        if authentication_token.blank?
          self.authentication_token = generate_authentication_token
        end
      end

      private

      def generate_authentication_token
        loop do
          token = Devise.friendly_token
          break token unless User.where(authentication_token: token).first
        end
      end
    end
  end
end
