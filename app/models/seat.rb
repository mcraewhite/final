class Seat < ActiveRecord::Base
  belongs_to :table
  has_one :player
end
