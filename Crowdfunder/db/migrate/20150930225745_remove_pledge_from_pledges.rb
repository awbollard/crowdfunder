class RemovePledgeFromPledges < ActiveRecord::Migration
  def change
    remove_column :pledges, :Pledge, :string
  end
end
