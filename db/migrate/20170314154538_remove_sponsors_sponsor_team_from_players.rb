class RemoveSponsorsSponsorTeamFromPlayers < ActiveRecord::Migration
  def change
    remove_reference :players, :sponsor, index: true, foreign_key: true
    remove_reference :players, :sponsors, index: true, foreign_key: true
    remove_reference :players, :team, index: true, foreign_key: true
  end
end
