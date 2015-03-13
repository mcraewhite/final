class Table < ActiveRecord::Base
  has_many :seats
  has_many :rounds
  has_many :games, through: :rounds
end
