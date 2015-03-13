class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :seat
  belongs_to :table

  accepts_nested_attributes_for :user, :allow_destroy => true
end
