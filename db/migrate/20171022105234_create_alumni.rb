class CreateAlumni < ActiveRecord::Migration[5.1]
  def change
    create_table :alumni do |t|
      t.integer :roll_no
      t.string :name
      t.string :grad_year
      t.string :personal_mail
      t.string :college_mail
      t.string :phone_no
      t.string :company_name
      t.string :designation
      t.string :location
      t.string :linkedIn
      t.string :facebook

      t.timestamps
    end
  end
end
