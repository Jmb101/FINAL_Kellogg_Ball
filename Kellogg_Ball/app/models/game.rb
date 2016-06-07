class Game < ActiveRecord::Base
  has_many :playersgames , :class_name => "Playersgame", :foreign_key => "game_id"
has_many :players, :through => :playersgames
end
