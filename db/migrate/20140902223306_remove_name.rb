class RemoveName < ActiveRecord::Migration
  def change
    remove_column :stops, :name
  end
end
