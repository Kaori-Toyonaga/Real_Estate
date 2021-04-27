class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :title
      t.integer :rent_fee
      t.text :address
      t.integer :age
      t.text :remark
    end
  end
end
