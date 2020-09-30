# frozen_string_literal: true

# Controller for league page
class LeagueController < ApplicationController
  def index
    league = FootballDataService.instance.league(params['league'])
    @league = league
    @teams = league['teams'].sort_by { |team| team['name'] }
  end
end
