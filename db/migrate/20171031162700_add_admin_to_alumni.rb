class AddAdminToAlumni < ActiveRecord::Migration[5.1]
  def change
    add_column :alumni, :admin, :boolean , default: false
  end
end
