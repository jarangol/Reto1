class CreateRamUses < ActiveRecord::Migration[5.1]
  def change
    create_table :ram_uses do |t|
      t.integer :value

      t.timestamps
    end
  end
end
