class CreateAlumni < ActiveRecord::Migration[5.1]
  def change
    create_table :alumni do |t|

      t.timestamps
    end
  end
end
