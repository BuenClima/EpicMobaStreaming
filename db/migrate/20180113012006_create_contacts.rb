class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :twitchChannel
      t.string :email
      t.text :message
      t.integer :gender
      t.datetime :dateToPlay

      t.timestamps
    end
  end
end
