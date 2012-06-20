class CreatePlanElements < ActiveRecord::Migration
  def change
    create_table :plan_elements do |t|
      t.string :description
      t.date :start_date
      t.date :end_date
      t.references :plan_workpackage

      t.string :type
      t.timestamps
    end
    add_index :plan_elements, :plan_workpackage_id
  end
end
