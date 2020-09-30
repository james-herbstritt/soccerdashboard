# frozen_string_literal: true

# This class gathers data for the team selection screen.
class LeagueSelectionController < ApplicationController
  def index
    @leagues = FootballDataService.instance.available_leagues
  end
end
