# frozen_string_literal: true

# This class gathers data for the team selection screen.
class TeamSelectionController < ApplicationController
  def index
    @leagues = FootballDataService.instance.available_leagues
  end
end
