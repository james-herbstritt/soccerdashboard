# frozen_string_literal: true

# Controller for league page
class LeagueController < ApplicationController
  attr_accessor :selected_team
  attr_accessor :selected_team_matches
  attr_accessor :current_matchday

  def index
    if params.key?(:league_id)
      render_from_league_page
    else
      render_from_form
    end
  end

  private

  def render_from_form
    @league = FootballDataService.instance.league(params['league'])
    @teams = @league['teams'].sort_by { |team| team['name'] }
    @selected_team = FootballDataService.instance.team(@teams[0]['id'])
    @selected_team_matches = FootballDataService.instance.matches_for_team(@teams[0]['id'])['matches']
  end

  def render_from_league_page
    @league = FootballDataService.instance.league(params['league_id'])
    @teams = @league['teams'].sort_by { |team| team['name'] }
    @selected_team = FootballDataService.instance.team(params['team_id'])
    @selected_team_matches = FootballDataService.instance.matches_for_team(params['team_id'])['matches']
  end
end
