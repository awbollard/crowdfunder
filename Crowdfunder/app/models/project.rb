class Project < ActiveRecord::Base

has_many :pledges
has_many :rewards
belongs_to :user
has_many :backers, through: :pledges, class_name: "User"
accepts_nested_attributes_for :rewards, reject_if: :all_blank, allow_destroy: true

end
