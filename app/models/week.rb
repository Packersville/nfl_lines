class Week < ActiveRecord::Base
  has_many :games
  attr_accessible :year, :start_date, :end_date, :week_num
end
