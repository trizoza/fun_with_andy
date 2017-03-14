class AddColumnsToPlayer < ActiveRecord::Migration
  def change
    add_reference :players, :sponsors, index: true, foreign_key: true
    add_reference :players, :team, index: true, foreign_key: true
  end
end
