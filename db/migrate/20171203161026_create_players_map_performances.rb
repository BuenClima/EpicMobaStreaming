class CreatePlayersMapPerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :players_map_performances do |t|
      t.references :player, foreign_key: true
      t.references :map, foreign_key: true
      t.float :win_rate
      t.float :loose_rate

      t.timestamps
    end
  end
end
