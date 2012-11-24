class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.string :registro
      t.string :nome

      t.timestamps
    end
  end
end
