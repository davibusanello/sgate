class CreateInstaladors < ActiveRecord::Migration
  def change
    create_table :instaladors do |t|
      t.string :nome
      t.string :registro

      t.timestamps
    end
  end
end
