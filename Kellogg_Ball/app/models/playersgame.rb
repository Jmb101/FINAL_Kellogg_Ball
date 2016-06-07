class Playersgame < ActiveRecord::Base

  belongs_to :player , :class_name => "Player", :foreign_key => "player_id"
  belongs_to :game , :class_name => "Game", :foreign_key => "game_id"
end
