class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name, null:false
      t.integer :age, null:false
      t.string :position, null:false
      t.references :team, null:false
      t.string :role , null:false
      t.boolean :is_captain,default: false,null:false
      t.boolean :is_active,default: true,null:false
      t.text :description
      t.timestamps
    end
  end
end
