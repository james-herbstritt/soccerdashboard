require 'test_helper'

class TeamSelectionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get team_selection_index_url
    assert_response :success
  end

end
