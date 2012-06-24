class CreatePlanOrganizations < ActiveRecord::Migration
  def change
    create_table :plan_organizations do |t|
      t.string :name
      t.string :short_name
      t.text :description
      t.string :country

      t.timestamps
    end
  end
end
