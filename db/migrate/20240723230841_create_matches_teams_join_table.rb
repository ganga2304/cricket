class CreateMatchesTeamsJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :matches, :teams
  end
end
