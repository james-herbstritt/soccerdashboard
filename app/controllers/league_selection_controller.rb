# frozen_string_literal: true

# This class gathers data for the team selection screen.
class LeagueSelectionController < ApplicationController
  def index
    @leagues = FootballDataService.instance.available_leagues
  end

  def select_league(league_id)
    @teams = FootballDataService.instance.teams_for_league_id(league_id)
  end
end
