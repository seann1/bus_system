class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.column :line_id, :integer
      t.column :station_id, :integer
    end
  end
end
