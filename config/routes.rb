# frozen_string_literal: true

Rails.application.routes.draw do
  get 'league_selection/index'

  # get '/league_selection/select_league', to: 'league_selection#select_league'

  get '/league/index', to: 'league#index'

  root 'league_selection#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
