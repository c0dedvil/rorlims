class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :username, :limit => 20
      t.string :password, :limit => 20
      t.string :email, :limit => 100
      t.string :activation_hash, :limit => 128
      t.integer :level
      t.string :area, :limit => 20
      t.string :first_name, :limit => 30
      t.string :surname, :limit => 30
      t.string :telephones, :limit => 50

      t.timestamps
    end
  end
end
