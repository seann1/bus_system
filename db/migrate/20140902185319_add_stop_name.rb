class AddStopName < ActiveRecord::Migration
  def change
    add_column :stops, :name, :string
  end
end
