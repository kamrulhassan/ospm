class CreatePlanProjects < ActiveRecord::Migration
  def change
    create_table :plan_projects do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
