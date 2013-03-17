class CreateAndroids < ActiveRecord::Migration
  def change
    create_table :androids do |t|
      t.string :carrier
      t.string :maker
      t.string :petname
      t.string :modelname
      t.float :os_ver_start
      t.float :os_ver_current
      t.float :screen_inch
      t.integer :screen_x
      t.integer :screen_y
      t.string :screen_dpi
      t.string :screen_type
      t.boolean :keyboard
      t.datetime :release_date

      t.timestamps
    end
  end
end
