class CreateMatchups < ActiveRecord::Migration[5.1]
  def change
    create_table :matchups do |t|
      t.references :blue_team, foreign_key: true
      t.references :red_team, foreign_key: true
      t.references :winner, foreign_key: true
      t.references :looser, foreign_key: true
      t.references :tournament, foreign_key: true
      t.date :date
      t.datetime :updated_at
      t.datetime :created_at

      t.timestamps
    end
  end
end
