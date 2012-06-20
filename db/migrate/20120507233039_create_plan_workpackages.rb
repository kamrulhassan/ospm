class CreatePlanWorkpackages < ActiveRecord::Migration
  def change
    create_table :plan_workpackages do |t|
      t.string :title
      t.string :wp_type
      t.references :plan_project

      t.timestamps
    end
    add_index :plan_workpackages, :plan_project_id
  end
end
