class CreatePlanMilestones < ActiveRecord::Migration
  def change
    create_table :plan_milestones do |t|
      t.string :name
      t.string :description
      t.date :date
      t.string :means_of_verificaiton
      t.references :plan_project

      t.timestamps
    end
    add_index :plan_milestones, :plan_project_id
  end
end
