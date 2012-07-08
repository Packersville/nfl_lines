class WeeksController < ApplicationController
  before_filter :current_year, :current_week, :current_user

  def index
    @weeks = Week.find_all_by_year(@current_year)
  end

  def edit
    @games = Game.find_all_by_week_id(params[:id])
    @user = User.find(@current_user)
    @user_picks = Array.new
    @games.each do |game|
      user_pick = @user.user_picks.build
      user_pick.game_id = game.id 
      @user_picks.push(user_pick)
    end
  end
end
