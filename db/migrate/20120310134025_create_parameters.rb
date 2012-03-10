class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.integer :id
      t.string :parameter, :limit => 100
      t.string :units, :limit => 30
      t.string :technic, :limit => 60
      t.string :area, :limit => 20
      t.timestamps
    end
  end
end
