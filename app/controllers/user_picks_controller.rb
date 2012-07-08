class UserPicksController < ApplicationController
  before_filter :current_week, :current_user

  def edit
    @games = Game.find_all_by_week_id(@current_week)
    @user = User.find(@current_user)
    @user_picks = Array.new(@games.count)
    @games.each do |game|
      @user_picks.push(@user.user_pick.build(:game_id => game.id))
    end
  end
end
