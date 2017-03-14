class RemoveTeamIdFromPlayer < ActiveRecord::Migration
  def change
    remove_reference :players, :team_id, index: true, foreign_key: true
  end
end
