class AddColumnToManager < ActiveRecord::Migration
  def change
    add_column :managers, :work_type, :string
  end
end
