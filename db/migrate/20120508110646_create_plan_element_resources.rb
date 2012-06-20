class CreatePlanElementResources < ActiveRecord::Migration
  def change
    create_table :plan_element_resources do |t|
		t.references :plan_element, :plan_resource
      	t.timestamps
    end
    add_index :plan_element_resources, :plan_resource_id
    add_index :plan_element_resources, :plan_element_id
  end
end
