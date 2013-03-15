class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.text :about
      t.float :price

      t.timestamps
    end
  end
end
