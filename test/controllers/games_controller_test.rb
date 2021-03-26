require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @game = games(:fresh_deck)
  end

  test "should get root" do
    get games_url
    assert_response :success
  end

end
