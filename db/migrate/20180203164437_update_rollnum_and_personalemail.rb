class UpdateRollnumAndPersonalemail < ActiveRecord::Migration[5.1]
  def change
    remove_column :alumni, :roll_no
    remove_column :alumni, :personal_mail
    add_column :alumni,:roll_no,:string
  end
end
