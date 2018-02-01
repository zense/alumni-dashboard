class AddRegs < ActiveRecord::Migration[5.1]
  def change
    create_table :regs do |t|
      t.references :alumnus, foreign_key: true
      t.references :event, foreign_key: true
      t.integer :guests, default: 0

      t.timestamps
    end

    remove_column :alumni, :guests
  end
end
