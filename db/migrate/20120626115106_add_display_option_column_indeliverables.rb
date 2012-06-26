class AddDisplayOptionColumnIndeliverables < ActiveRecord::Migration
  def change
  	add_column :deliverables, :display_option, :integer
  	add_column :deliverables, :status, :integer

  end
end
