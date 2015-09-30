class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 8 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, length: { minimum: 8 }, if: -> { new_record? || changes["password"] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }

  validates :email, uniqueness: true

  has_many :projects
  has_many :backed_projects, through: :pledges, class_name: "Project", source: :project
  has_many :pledges
  has_many :rewards
end
