class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :id
      t.string :company, :limit => 60
      t.string :id_company, :limit => 20
      t.string :applicant, :limit => 60
      t.string :position, :limit => 60
      t.string :address, :limit => 60
      t.string :phones, :limit => 50
      t.string :fax, :limit => 20
      t.string :city, :limit => 30
      t.string :email, :limit => 100
      t.string :contract, :limit => 50
      t.date :date_contract
      t.string :quote_number, :limit => 20
      t.date :date_quote

      t.timestamps
    end
  end
end

