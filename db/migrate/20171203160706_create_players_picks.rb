class CreatePlayersPicks < ActiveRecord::Migration[5.1]
  def change
    create_table :players_picks do |t|
      t.references :player, foreign_key: true
      t.references :champion, foreign_key: true
      t.float :pick_rate
      t.float :win_rate
      t.string :kda

      t.timestamps
    end
  end
end
