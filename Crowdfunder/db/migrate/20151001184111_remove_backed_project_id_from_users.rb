class RemoveBackedProjectIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :backed_project_id, :string
  end
end
