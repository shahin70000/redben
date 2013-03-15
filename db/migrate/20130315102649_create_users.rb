class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :redirect_address
      t.integer :account_id

      t.timestamps
    end
  end
end
