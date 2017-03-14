class AddAnotherColumnsToPlayer < ActiveRecord::Migration
  def change
    add_reference :players, :sponsor, index: true, foreign_key: true
  end
end
