class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :funding_goal
      t.string :deadline
      t.string :media

      t.timestamps null: false
    end
  end
end
