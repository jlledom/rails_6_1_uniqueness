require "test_helper"

class PlayerTest < ActiveSupport::TestCase
  test "the truth" do
    player = Player.new(name: 'player1', team: Team.new(name: 'team1', coach: Coach.new(name: 'coach1')))
    player.team.coach.name = 'coach2'
    player.save!

    assert true
  end
end
