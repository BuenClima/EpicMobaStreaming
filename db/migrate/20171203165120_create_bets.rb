class CreateBets < ActiveRecord::Migration[5.1]
  def change
    create_table :bets do |t|
      t.string :name
      t.float :ratio
      t.references :matchup, foreign_key: true
      t.string :refered

      t.timestamps
    end
  end
end
