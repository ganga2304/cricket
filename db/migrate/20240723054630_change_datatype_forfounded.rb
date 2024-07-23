class ChangeDatatypeForfounded < ActiveRecord::Migration[7.1]
  def change
        change_column :teams, :founded, :integer

  end
end
