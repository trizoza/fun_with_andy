class AddTeamIdToPlayer < ActiveRecord::Migration
  def change
    add_reference :players, :team_id, index: true, foreign_key: true
  end
end
