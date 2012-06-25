class AddDescriptionColumnInPlanWorkpackages < ActiveRecord::Migration
  def change
  	 add_column :plan_workpackages, :description, :text
  end
end
