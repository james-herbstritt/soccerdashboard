# frozen_string_literal: true

Rails.application.routes.draw do
  root 'league_selection#index'
  get 'league_selection/index'

  get '/league/index', to: 'league#index'
  get '/league/:league_id/team/:team_id', to: 'league#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
