class AddFieldsToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :user_id, :integer
  end
end
