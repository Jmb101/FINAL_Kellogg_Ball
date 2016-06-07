class Player < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :playersgames , :class_name => "Playersgame", :foreign_key => "game_id"
has_many :players, :through => :playersgames
end
