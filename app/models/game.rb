class Game < ActiveRecord::Base
  has_many :game_rules, dependent: :destroy
  has_many :rules, through: :game_rules
  belongs_to :game_type

  validates :gametype_id, presence: true
  validates :game_name, presence: true
  validates :game_desc, presence: true
end
