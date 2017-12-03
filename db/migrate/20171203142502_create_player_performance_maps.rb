class CreatePlayerPerformanceMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :player_performance_maps do |t|
      t.integer :player_id
      t.integer :map_id
      t.float :win_rate
      t.float :loose_rate

      t.timestamps
    end
  end
end
