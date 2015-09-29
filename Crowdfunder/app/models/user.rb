class User < ActiveRecord::Base

has_many :pledges

# rails will be looking for Project due to 'class_name'
has_many :owned_projects, class_name: 'Project' # project creation
has_many :backed_projects, class_name: 'Project' # project backing

end
