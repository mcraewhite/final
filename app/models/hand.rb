class Hand < ActiveRecord::Base
  belongs_to :round
  belongs_to :player
end
