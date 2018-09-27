class TeamsController < ApplicationController

  def league
    @teams = Team.ranked
  end

  def eastern
    @teams = Team.eastern.ranked
  end

  def western
    @teams = Team.western.ranked
  end

end
