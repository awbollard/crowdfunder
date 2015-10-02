class RemoveProjectIdFromPledges < ActiveRecord::Migration
  def change
    remove_column :pledges, :project_id, :string
  end
end
