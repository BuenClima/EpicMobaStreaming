class CreatePlayersPicks < ActiveRecord::Migration[5.1]
  def change
    create_table :players_picks do |t|
      t.integer :player_id
      t.integer :champion_id
      t.float :pick_rate
      t.float :win_rate
      t.string :kda

      t.timestamps
    end
  end
end
