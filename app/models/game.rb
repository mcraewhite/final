class Game < ActiveRecord::Base
  has_many :game_rules, dependent: :destroy
  has_many :rules, through: :game_rules
  belongs_to :game_type
end
