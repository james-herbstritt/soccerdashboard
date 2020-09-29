# frozen_string_literal: true

Rails.application.routes.draw do
  get 'league_selection/index'

  get '/league/:id', to: 'league#index', as: 'league'
  get '/league', to: redirect('/league_selection/index')

  root 'league_selection#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
