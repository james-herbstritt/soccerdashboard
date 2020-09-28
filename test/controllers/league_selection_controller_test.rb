# frozen_string_literal: true

require 'test_helper'

# Test for LeagueSelectionController
class LeagueSelectionControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get team_selection_index_url
    assert_response :success
  end
end
