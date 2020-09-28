# frozen_string_literal: true

# Service for using the football data api
class FootballDataService
  include Singleton
  attr_reader :league_ids

  def initialize
    @league_ids = [2021,
                   2017,
                   2003,
                   2002,
                   2015,
                   2019,
                   2014,
                   2016,
                   2013]
  end

  def available_leagues
    response = HTTParty.get('https://api.football-data.org/v2/competitions/',
                            headers: { 'X-Auth-Token' => ENV['FOOTBALL_AUTH_TOKEN'] })
    competitions = response['competitions']

    available_leagues = competitions.select { |comp| @league_ids.include?(comp['id']) }
    available_leagues.sort_by { |league| league['name'] }
  end
end
