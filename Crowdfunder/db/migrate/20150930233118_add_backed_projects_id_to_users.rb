class AddBackedProjectsIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :backed_project_id, :integer
  end
end
