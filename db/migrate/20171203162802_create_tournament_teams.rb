class CreateTournamentTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :tournament_teams do |t|
      t.references :tournament, foreign_key: true
      t.references :team, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
