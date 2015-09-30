class AddFieldsToPledges < ActiveRecord::Migration
  def change
    add_column :pledges, :Pledge, :string
    add_column :pledges, :user_id, :integer
  end
end
