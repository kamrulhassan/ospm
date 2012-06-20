class CreatePlanResources < ActiveRecord::Migration
  def change
    create_table :plan_resources do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
