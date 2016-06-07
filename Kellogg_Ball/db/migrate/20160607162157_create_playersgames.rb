class CreatePlayersgames < ActiveRecord::Migration
  def change
    create_table :playersgames do |t|
      t.integer :game_id
      t.integer :player_id

      t.timestamps

    end
  end
end
