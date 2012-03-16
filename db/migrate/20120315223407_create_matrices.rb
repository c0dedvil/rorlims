class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.integer :id
      t.string :matrix

      t.timestamps
    end
  end
end
