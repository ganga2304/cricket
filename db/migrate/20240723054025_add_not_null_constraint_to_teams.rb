class AddNotNullConstraintToTeams < ActiveRecord::Migration[7.1]
  def change
      change_column_null :teams, :name, false
      change_column_null :teams, :country, false
      

  end
end
