class CreateMatchups < ActiveRecord::Migration[5.1]
  def change
    create_table :matchups do |t|
      t.references :blue_team, foreign_key: true
      t.references :red_team, foreign_key: true
      t.references :winner, foreign_key: true
      t.references :looser, foreign_key: true
      t.datetime :date
      t.string :rank
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
