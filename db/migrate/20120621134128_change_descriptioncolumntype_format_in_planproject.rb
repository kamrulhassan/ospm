class ChangeDescriptioncolumntypeFormatInPlanproject < ActiveRecord::Migration
 def change
   change_column :plan_projects, :description, :text
  end
end
