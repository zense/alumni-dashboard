class AddNumberofGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :alumni,:guests, :integer,default: 0
  end
end
