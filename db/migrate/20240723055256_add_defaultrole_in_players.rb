class AddDefaultroleInPlayers < ActiveRecord::Migration[7.1]
  def change
      change_column_default :players, :role, 'batsman'

  end
end
