class UserPicks < ActiveRecord::Base
  belongs_to :game, :user

  attr_accessible :game_id
end
