class RemoveIndexFromAlumniEmail < ActiveRecord::Migration[5.1]
  def change
    remove_index :alumni, :email
    add_index :alumni, :email
  end
end
