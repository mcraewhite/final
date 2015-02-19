class Rule < ActiveRecord::Base
  has_many :game_rules, dependent: :destroy
  has_many :games, through: :game_rules
end
