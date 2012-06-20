class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.string :description
      t.date :start_date
      t.date :end_date
      t.references :project

      t.timestamps
    end
    add_index :deliverables, :project_id
  end
end
