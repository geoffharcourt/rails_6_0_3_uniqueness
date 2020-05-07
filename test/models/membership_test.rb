require 'test_helper'

class MembershipTest < ActiveSupport::TestCase
  def test_association_stuff
    team = Team.create!
    player = Player.create!(teams: [team])
    player.update!(name: "hello")
  end
end
