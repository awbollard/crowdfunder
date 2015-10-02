class RemoveBackerIdFromProjects < ActiveRecord::Migration
  def change
  	remove_column :projects, :backer_id
  end
end
