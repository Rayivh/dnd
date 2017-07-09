class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :level
      t.string :casting_time
      t.string :range
      t.text :components
      t.string :duration
      t.text :description

      t.timestamps null: false
    end
  end
end
